// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type EnumToIClassBorder2 struct {
	Parent *EnumToIClassBorder1
	_io *kaitai.Stream
	_root *EnumToIClassBorder2
	_parent interface{}
	_f_isDog bool
	isDog bool
}
func NewEnumToIClassBorder2(parent *EnumToIClassBorder1) *EnumToIClassBorder2 {
	return &EnumToIClassBorder2{
		Parent: parent,
	}
}

func (this *EnumToIClassBorder2) Read(io *kaitai.Stream, parent interface{}, root *EnumToIClassBorder2) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	return err
}
func (this *EnumToIClassBorder2) IsDog() (v bool, err error) {
	if (this._f_isDog) {
		return this.isDog, nil
	}
	tmp1, err := this.Parent.SomeDog()
	if err != nil {
		return false, err
	}
	this.isDog = bool(tmp1 == 4)
	this._f_isDog = true
	return this.isDog, nil
}
