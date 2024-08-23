// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"


type EnumLongRangeU_Constants int
const (
	EnumLongRangeU_Constants__Zero EnumLongRangeU_Constants = 0
	EnumLongRangeU_Constants__IntMax EnumLongRangeU_Constants = 4294967295
	EnumLongRangeU_Constants__IntOverMax EnumLongRangeU_Constants = 4294967296
	EnumLongRangeU_Constants__LongMax EnumLongRangeU_Constants = 9223372036854775807
)
var values_EnumLongRangeU_Constants = map[EnumLongRangeU_Constants]struct{}{0: {}, 4294967295: {}, 4294967296: {}, 9223372036854775807: {}}
func (v EnumLongRangeU_Constants) isDefined() bool {
	_, ok := values_EnumLongRangeU_Constants[v]
	return ok
}
type EnumLongRangeU struct {
	F1 EnumLongRangeU_Constants
	F2 EnumLongRangeU_Constants
	F3 EnumLongRangeU_Constants
	F4 EnumLongRangeU_Constants
	_io *kaitai.Stream
	_root *EnumLongRangeU
	_parent kaitai.Struct
}
func NewEnumLongRangeU() *EnumLongRangeU {
	return &EnumLongRangeU{
	}
}

func (this EnumLongRangeU) IO_() *kaitai.Stream {
	return this._io
}

func (this *EnumLongRangeU) Read(io *kaitai.Stream, parent kaitai.Struct, root *EnumLongRangeU) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU8be()
	if err != nil {
		return err
	}
	this.F1 = EnumLongRangeU_Constants(tmp1)
	tmp2, err := this._io.ReadU8be()
	if err != nil {
		return err
	}
	this.F2 = EnumLongRangeU_Constants(tmp2)
	tmp3, err := this._io.ReadU8be()
	if err != nil {
		return err
	}
	this.F3 = EnumLongRangeU_Constants(tmp3)
	tmp4, err := this._io.ReadU8be()
	if err != nil {
		return err
	}
	this.F4 = EnumLongRangeU_Constants(tmp4)
	return err
}
