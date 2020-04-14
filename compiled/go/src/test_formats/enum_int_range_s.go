// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"


type EnumIntRangeS_Constants int
const (
	EnumIntRangeS_Constants__IntMin EnumIntRangeS_Constants = -2147483648
	EnumIntRangeS_Constants__Zero EnumIntRangeS_Constants = 0
	EnumIntRangeS_Constants__IntMax EnumIntRangeS_Constants = 2147483647
)
type EnumIntRangeS struct {
	F1 EnumIntRangeS_Constants
	F2 EnumIntRangeS_Constants
	F3 EnumIntRangeS_Constants
	_io *kaitai.Stream
	_root *EnumIntRangeS
	_parent interface{}
}
func NewEnumIntRangeS() *EnumIntRangeS {
	return &EnumIntRangeS{
	}
}

func (this *EnumIntRangeS) Read(io *kaitai.Stream, parent interface{}, root *EnumIntRangeS) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadS4be()
	if err != nil {
		return err
	}
	this.F1 = EnumIntRangeS_Constants(tmp1)
	tmp2, err := this._io.ReadS4be()
	if err != nil {
		return err
	}
	this.F2 = EnumIntRangeS_Constants(tmp2)
	tmp3, err := this._io.ReadS4be()
	if err != nil {
		return err
	}
	this.F3 = EnumIntRangeS_Constants(tmp3)
	return err
}
