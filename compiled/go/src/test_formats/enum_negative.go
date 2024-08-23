// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"


type EnumNegative_Constants int
const (
	EnumNegative_Constants__NegativeOne EnumNegative_Constants = -1
	EnumNegative_Constants__PositiveOne EnumNegative_Constants = 1
)
var values_EnumNegative_Constants = map[EnumNegative_Constants]struct{}{-1: {}, 1: {}}
func (v EnumNegative_Constants) isDefined() bool {
	_, ok := values_EnumNegative_Constants[v]
	return ok
}
type EnumNegative struct {
	F1 EnumNegative_Constants
	F2 EnumNegative_Constants
	_io *kaitai.Stream
	_root *EnumNegative
	_parent kaitai.Struct
}
func NewEnumNegative() *EnumNegative {
	return &EnumNegative{
	}
}

func (this EnumNegative) IO_() *kaitai.Stream {
	return this._io
}

func (this *EnumNegative) Read(io *kaitai.Stream, parent kaitai.Struct, root *EnumNegative) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadS1()
	if err != nil {
		return err
	}
	this.F1 = EnumNegative_Constants(tmp1)
	tmp2, err := this._io.ReadS1()
	if err != nil {
		return err
	}
	this.F2 = EnumNegative_Constants(tmp2)
	return err
}
