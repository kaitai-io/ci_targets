// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type EnumToIClassBorder2 struct {
	Parent *EnumToIClassBorder1
	_io *kaitai.Stream
	_root *EnumToIClassBorder2
	_parent kaitai.Struct
	_f_isDog bool
	isDog bool
}
func NewEnumToIClassBorder2(parent *EnumToIClassBorder1) *EnumToIClassBorder2 {
	return &EnumToIClassBorder2{
		Parent: parent,
	}
}

func (this EnumToIClassBorder2) IO_() *kaitai.Stream {
	return this._io
}

func (this *EnumToIClassBorder2) Read(io *kaitai.Stream, parent kaitai.Struct, root *EnumToIClassBorder2) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	return err
}
func (this *EnumToIClassBorder2) IsDog() (v bool, err error) {
	if (this._f_isDog) {
		return this.isDog, nil
	}
	this._f_isDog = true
	tmp1, err := this.Parent.SomeDog()
	if err != nil {
		return false, err
	}
	this.isDog = bool(tmp1 == 4)
	return this.isDog, nil
}
