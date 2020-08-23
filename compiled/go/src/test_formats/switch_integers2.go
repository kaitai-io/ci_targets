// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"strconv"
)

type SwitchIntegers2 struct {
	Code uint8
	Len uint64
	Ham []byte
	Padding uint8
	_io *kaitai.Stream
	_root *SwitchIntegers2
	_parent interface{}
	_f_lenModStr bool
	lenModStr string
}
func NewSwitchIntegers2() *SwitchIntegers2 {
	return &SwitchIntegers2{
	}
}

func (this *SwitchIntegers2) Read(io *kaitai.Stream, parent interface{}, root *SwitchIntegers2) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Code = tmp1
	switch (this.Code) {
	case 1:
		tmp2, err := this._io.ReadU1()
		if err != nil {
			return err
		}
		this.Len = uint64(tmp2)
	case 2:
		tmp3, err := this._io.ReadU2le()
		if err != nil {
			return err
		}
		this.Len = uint64(tmp3)
	case 4:
		tmp4, err := this._io.ReadU4le()
		if err != nil {
			return err
		}
		this.Len = uint64(tmp4)
	case 8:
		tmp5, err := this._io.ReadU8le()
		if err != nil {
			return err
		}
		this.Len = uint64(tmp5)
	}
	tmp6, err := this._io.ReadBytes(int(this.Len))
	if err != nil {
		return err
	}
	tmp6 = tmp6
	this.Ham = tmp6
	if (this.Len > 3) {
		tmp7, err := this._io.ReadU1()
		if err != nil {
			return err
		}
		this.Padding = tmp7
	}
	return err
}
func (this *SwitchIntegers2) LenModStr() (v string, err error) {
	if (this._f_lenModStr) {
		return this.lenModStr, nil
	}
	this.lenModStr = string(strconv.FormatInt(int64(((this.Len * 2) - 1)), 10))
	this._f_lenModStr = true
	return this.lenModStr, nil
}
