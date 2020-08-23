// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"


type EnumNegative_Constants int
const (
	EnumNegative_Constants__NegativeOne EnumNegative_Constants = -1
	EnumNegative_Constants__PositiveOne EnumNegative_Constants = 1
)
type EnumNegative struct {
	F1 EnumNegative_Constants
	F2 EnumNegative_Constants
	_io *kaitai.Stream
	_root *EnumNegative
	_parent interface{}
}
func NewEnumNegative() *EnumNegative {
	return &EnumNegative{
	}
}

func (this *EnumNegative) Read(io *kaitai.Stream, parent interface{}, root *EnumNegative) (err error) {
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
