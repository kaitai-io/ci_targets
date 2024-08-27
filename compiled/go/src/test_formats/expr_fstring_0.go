// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"fmt"
)

type ExprFstring0 struct {
	SeqStr string
	SeqInt uint8
	_io *kaitai.Stream
	_root *ExprFstring0
	_parent kaitai.Struct
	_f_empty bool
	empty string
	_f_headAndInt bool
	headAndInt string
	_f_headAndIntLiteral bool
	headAndIntLiteral string
	_f_headAndStr bool
	headAndStr string
	_f_headAndStrLiteral bool
	headAndStrLiteral string
	_f_literal bool
	literal string
	_f_literalWithEscapes bool
	literalWithEscapes string
}
func NewExprFstring0() *ExprFstring0 {
	return &ExprFstring0{
	}
}

func (this ExprFstring0) IO_() *kaitai.Stream {
	return this._io
}

func (this *ExprFstring0) Read(io *kaitai.Stream, parent kaitai.Struct, root *ExprFstring0) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadBytes(int(5))
	if err != nil {
		return err
	}
	tmp1 = tmp1
	this.SeqStr = string(tmp1)
	tmp2, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.SeqInt = tmp2
	return err
}
func (this *ExprFstring0) Empty() (v string, err error) {
	if (this._f_empty) {
		return this.empty, nil
	}
	this._f_empty = true
	this.empty = string(fmt.Sprintf("", ))
	return this.empty, nil
}
func (this *ExprFstring0) HeadAndInt() (v string, err error) {
	if (this._f_headAndInt) {
		return this.headAndInt, nil
	}
	this._f_headAndInt = true
	this.headAndInt = string(fmt.Sprintf("abc=%v", this.SeqInt))
	return this.headAndInt, nil
}
func (this *ExprFstring0) HeadAndIntLiteral() (v string, err error) {
	if (this._f_headAndIntLiteral) {
		return this.headAndIntLiteral, nil
	}
	this._f_headAndIntLiteral = true
	this.headAndIntLiteral = string(fmt.Sprintf("abc=%v", 123))
	return this.headAndIntLiteral, nil
}
func (this *ExprFstring0) HeadAndStr() (v string, err error) {
	if (this._f_headAndStr) {
		return this.headAndStr, nil
	}
	this._f_headAndStr = true
	this.headAndStr = string(fmt.Sprintf("abc=%v", this.SeqStr))
	return this.headAndStr, nil
}
func (this *ExprFstring0) HeadAndStrLiteral() (v string, err error) {
	if (this._f_headAndStrLiteral) {
		return this.headAndStrLiteral, nil
	}
	this._f_headAndStrLiteral = true
	this.headAndStrLiteral = string(fmt.Sprintf("abc=foo", ))
	return this.headAndStrLiteral, nil
}
func (this *ExprFstring0) Literal() (v string, err error) {
	if (this._f_literal) {
		return this.literal, nil
	}
	this._f_literal = true
	this.literal = string("abc")
	return this.literal, nil
}
func (this *ExprFstring0) LiteralWithEscapes() (v string, err error) {
	if (this._f_literalWithEscapes) {
		return this.literalWithEscapes, nil
	}
	this._f_literalWithEscapes = true
	this.literalWithEscapes = string("abc\n\tt")
	return this.literalWithEscapes, nil
}
