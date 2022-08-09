module stas

import readline
import term

[flag]
pub enum BuiltinType {
	void_t
	int_t
	bool_t
	ptr_t
}

struct StackElement {
	pos FilePos
mut:
	typ BuiltinType
}

fn (a StackElement) == (b StackElement) bool {
	return a.typ == b.typ
}

struct Checker {
	fns map[string]&Function
mut:
	stack []StackElement
	curr IR_Statement

	readline readline.Readline
	is_tutor bool
}

fn (mut c Checker) push(t BuiltinType){
	assert !t.has(.void_t)
	c.stack << StackElement {
		typ: t
		pos: c.curr.pos
	}
}

fn (mut c Checker) pop(t BuiltinType)BuiltinType{
	if c.stack.len != 0 {
		elm := c.stack.pop()
		if !elm.typ.has(t) {
			c.error_empty("Stack value is incorrect type '$t'")
		}
		return elm.typ
	}
	c.error_empty("Not enough values to consume from stack")
}

fn (mut c Checker) top(t BuiltinType){
	elm := c.stack.last()
	if !elm.typ.has(t) {
		dump(elm)
		dump(t)
		c.dump_stack(5)
		panic("s")
	}
}

fn (mut c Checker) dump_top(){
	if c.stack.len == 0 {
		println("${c.curr.pos.str()}: ${notice("stack empty")}")
	} else {
		top := c.stack.last()
		eprintln("${c.curr.pos.str()}: type "+notice('$top.typ')+" pushed by "+info("${top.pos}"))
		eprintln(underline_source_token(top.pos))
	}
}

fn (mut c Checker) dump_stack(len int){
	if c.stack.len == 0 {
		println("internal: ${notice("stack empty")}")
	} else {
		println("-----  Stack Top   ----- ")
		stack := c.stack[max(0,c.stack.len-len)..]
		for idx, top in stack.reverse() {
			println("${bold(idx.str())}: type "+notice('$top.typ')+" pushed by "+info("${top.pos}"))
			println(underline_source_token(top.pos))
		}
		println("----- Stack Bottom ----- ")
	}
}

fn (mut c Checker) sim_single(s IR_Statement, ctx &Function){
	c.curr = s
	match s {
		// --- PUSH/POP ---
		IR_PUSH_NUMBER {c.push(.int_t)}
		IR_PUSH_BOOL {c.push(.bool_t)}
		IR_PUSH_STR_VAR {c.push(.ptr_t)}
		IR_PUSH_VAR {
			if a := ctx.get_var(s.name) {
				c.push(a.typ)
			} else {
				panic("unhandled")
			}
		}
		/* IR_PUSH_BUF_PTR {
			c.push(.ptr_t)
		} */
		IR_POP_NUM_VAR {
			c.pop(.int_t | .ptr_t | .bool_t)
		}
		// --- OPERATIONS ---
		IR_ADD {
			a := c.pop(.int_t | .ptr_t)
			b := c.pop(.int_t | .ptr_t)
			c.push(a | b)
		}
		IR_SUB {
			a := c.pop(.int_t | .ptr_t)
			b := c.pop(.int_t | .ptr_t)
			c.push(a | b)
		}
		IR_MUL {
			a := c.pop(.int_t)
			b := c.pop(.int_t)
			c.push(a | b)
		}
		IR_DIV {
			a := c.pop(.int_t)
			b := c.pop(.int_t)
			c.push(a | b)
		}
		IR_MOD {
			a := c.pop(.int_t)
			b := c.pop(.int_t)
			c.push(a | b)
		}
		IR_DIVMOD {
			a := c.pop(.int_t)
			b := c.pop(.int_t)
			c.push(a | b)
			c.push(a | b)
		}
		IR_DEC {
			c.top(.int_t | .ptr_t)
		}
		IR_INC {
			c.top(.int_t | .ptr_t)
		}
		// --- STACK ---
		IR_DROP {
			c.stack.pop()
		}
		IR_DUP {
			c.stack << c.stack.last()
		}
		IR_SWAP {
			first := c.stack.pop()
			last := c.stack.pop()
			c.stack << first
			c.stack << last
		}
		// --- COMPARISION --
		IR_EQUAL {
			c.pop(.int_t | .ptr_t | .bool_t)
			c.pop(.int_t | .ptr_t | .bool_t)
			c.push(.bool_t)
		}
		IR_NOTEQUAL {
			c.pop(.int_t | .ptr_t | .bool_t)
			c.pop(.int_t | .ptr_t | .bool_t)
			c.push(.bool_t)
		}
		IR_GREATER {
			c.pop(.int_t | .ptr_t)
			c.pop(.int_t | .ptr_t)
			c.push(.bool_t)
		}
		IR_LESS {
			c.pop(.int_t | .ptr_t | .bool_t)
			c.pop(.int_t | .ptr_t | .bool_t)
			c.push(.bool_t)
		}
		// --- POINTERS ---
		IR_DEREF_8, IR_DEREF_16, IR_DEREF_32, IR_DEREF_64 {
			c.pop(.ptr_t)
			c.push(.int_t)
		}
		IR_WRITEP_8 {
			c.pop(.int_t | .ptr_t | .bool_t)
			c.pop(.ptr_t)
		}
		// --- INTRINSIC ---
		IR_SYSCALL {
			c.pop(.int_t)
			c.push(.int_t)
		}
		IR_SYSCALL1 {
			c.pop(.int_t | .ptr_t | .bool_t)

			c.pop(.int_t)
			c.push(.int_t)
		}
		IR_SYSCALL2 {
			c.pop(.int_t | .ptr_t | .bool_t)
			c.pop(.int_t | .ptr_t | .bool_t)

			c.pop(.int_t)
			c.push(.int_t)
		}
		IR_SYSCALL3 {
			c.pop(.int_t | .ptr_t | .bool_t)
			c.pop(.int_t | .ptr_t | .bool_t)
			c.pop(.int_t | .ptr_t | .bool_t)

			c.pop(.int_t)
			c.push(.int_t)
		}
		IR_SYSCALL4 {
			c.pop(.int_t | .ptr_t | .bool_t)
			c.pop(.int_t | .ptr_t | .bool_t)
			c.pop(.int_t | .ptr_t | .bool_t)
			c.pop(.int_t | .ptr_t | .bool_t)

			c.pop(.int_t)
			c.push(.int_t)
		}
		IR_SYSCALL5 {
			c.pop(.int_t | .ptr_t | .bool_t)
			c.pop(.int_t | .ptr_t | .bool_t)
			c.pop(.int_t | .ptr_t | .bool_t)
			c.pop(.int_t | .ptr_t | .bool_t)
			c.pop(.int_t | .ptr_t | .bool_t)

			c.pop(.int_t)
			c.push(.int_t)
		}
		IR_SYSCALL6 {
			c.pop(.int_t | .ptr_t | .bool_t)
			c.pop(.int_t | .ptr_t | .bool_t)
			c.pop(.int_t | .ptr_t | .bool_t)
			c.pop(.int_t | .ptr_t | .bool_t)
			c.pop(.int_t | .ptr_t | .bool_t)
			c.pop(.int_t | .ptr_t | .bool_t)

			c.pop(.int_t)
			c.push(.int_t)
		}
		// --- COMPOUND ---
		IR_CALL_FUNC {
			c.sim_function(c.fns[s.func])
		}
		IR_IF {
			c.sim_if(s ,ctx)
		}
		IR_WHILE {
			c.sim_while(s ,ctx)
		}
		IR_MATCH {
			c.sim_match(s ,ctx)
		}
		IR_RETURN {
			if ctx.ret != .void_t {
				c.pop(ctx.ret)
			}
		} 
		// this may be bad
		// it does not not check for unreachable code
		IR_ASSERT {
			c.pop(.bool_t)
		}
		IR_VAR_INIT_NUMBER{}
		IR_VAR_INIT_STR{}
		// --- DONE ---
		DEBUG_DUMP {
			c.dump_top()
		}
		IR_ASM_NOP {}
		else {
			panic("Check not exaustive! $s")
		}
	}
	if c.is_tutor && ctx.name == 'main' {
		println(bold(
"  
 Function: $ctx.name
  Returns: $ctx.ret
 Location: ${ctx.pos.non_quoted()}
"
		))
		println(create_underline(s.pos,10))
		c.dump_stack(5)
		for {
			rline := c.readline.read_line("awaiting... ") or { 
				println('')
				exit(0)
			}
			_ := rline
			/* match rline.trim_space() {
				'help' {
					println("help!")
					continue
				}
				'next', 'n' {

				}
				'step', 's' {

				}
				else {
					println("nothing!")
					continue
				}
			} */
			break
		}
		term.clear()
	}
}

fn (mut c Checker) sim_body(body []IR_Statement, ctx &Function){
	for s in body {
		c.sim_single(s,ctx)
	}
}

fn (mut c Checker) sim_if(statement &IR_IF, ctx &Function){ 
	c.sim_body(statement.top, ctx)
	c.pop(.bool_t)
	// type check both pathways
	// body and else must leave stack in the exact same condition!
	if statement.other.len != 0 {
		stack_untouched := c.stack.clone()
		c.sim_body(statement.body, ctx)

		stack_1 := c.stack.clone()
		c.stack = stack_untouched
		c.sim_body(statement.other, ctx)

		assert stack_1 == c.stack
	} else {
		c.sim_body(statement.body, ctx)
	}
}

fn (mut c Checker) sim_while(statement &IR_WHILE, ctx &Function){
	stack_untouched := c.stack.clone()
	c.sim_body(statement.top, ctx)
	c.pop(.bool_t)

	c.sim_body(statement.body, ctx)
	assert c.stack == stack_untouched
}

fn (mut c Checker) sim_match(statement &IR_MATCH, ctx &Function){
	// IR_MATCH.top
	{
		stack_untouched := c.stack.clone()
		if statement.top.len != 0 {
			c.sim_body(statement.top, ctx)
			c.pop(.int_t | .ptr_t | .bool_t) // literally anything
			assert c.stack == stack_untouched
		} else {
			c.pop(.int_t | .ptr_t | .bool_t)
		}
	}
	// IR_MATCH.body
	stack_untouched := c.stack.clone()
	for body in statement.body {
		c.sim_body(body.top, ctx)
		c.pop(.int_t | .ptr_t | .bool_t)
		assert c.stack == stack_untouched

		c.stack = stack_untouched
		c.sim_body(body.body, ctx)
		assert c.stack == stack_untouched
	}
}

[noreturn]
fn (mut c Checker) error_empty(err string){
	print_error(err,c.curr.pos)
	eprintln(bold("--- Stack Dump ---"))
	c.dump_stack(10)
	exit(1)
}

[noreturn]
fn (mut c Checker) error_fp(err string, fp FilePos){
	print_error(err,fp)
	eprintln(bold("--- Stack Dump ---"))
	c.dump_stack(10)
	exit(1)
}

[noreturn]
fn (mut c Checker) error(err string){
	print_error_file(err,c.stack.last().pos.filename)
	eprintln(bold("--- Stack Dump ---"))
	c.dump_stack(10)
	exit(1)
}

fn promote_type(typ BuiltinType)BuiltinType{
	if typ.has(.int_t | .ptr_t) {
		return .int_t | .ptr_t
	}
	return typ
}

fn (mut c Checker) sim_function(ctx &Function){
	trace("new sim $ctx.name",@FN)
	for typ in ctx.args.reverse() {
		c.pop(typ.typ)
		//trace("pop arg $typ.name - $typ.typ",@FN)
	}
	mut entry_pos := c.stack.len
	c.sim_body(ctx.body, ctx)
	trace("  finish sim - $ctx.name",@FN)
	
	if ctx.ret != .void_t {
		ret := c.stack.last()
		typ := promote_type(ret.typ)
		entry_pos++
		if !typ.has(ctx.ret) {
			c.error_fp("Returning stack type is incompatible with ${ctx.ret}",ret.pos)
		}
		trace("  fn ret $typ - $ctx.name",@FN)

		c.stack[c.stack.len-1].typ = typ
	}
	if c.stack.len != entry_pos {
		c.error("Returning from function '$ctx.name' with $c.stack.len value/s on stack")
	}
	// TODO: get FilePos of function definition?
	// attach a Token or FilePos to struct Function
	// and call a comp error with a FilePos but with no body
}

fn (mut c Checker) check_all(){
	/* for _, f in c.fns {
		for s in f.args {
			assert s.typ != .void_t
		}
		for s in f.body {
			assert s.pos.len != 0
		}
	} */
	mut count := 0
	for _, i in c.fns {
		count += i.body.len
	}
	c.stack = []StackElement{ cap:count }
	defer {
		unsafe { free(c.stack) }
	}
	c.sim_function(c.fns["main"])
}

// debug keywords

struct DEBUG_DUMP {
	pos FilePos
	amt int = 1
}

fn (i DEBUG_DUMP) gen(mut ctx Function) string {
	return '; --- dump ---'
	/* panic("Code for _dump must never be generated") */
}