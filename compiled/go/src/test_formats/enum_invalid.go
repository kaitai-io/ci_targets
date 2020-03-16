// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"


type EnumInvalid_Animal int
const (
	EnumInvalid_Animal__Dog EnumInvalid_Animal = 102
	EnumInvalid_Animal__Cat EnumInvalid_Animal = 124
)
type EnumInvalid struct {
	Pet1 EnumInvalid_Animal
	Pet2 EnumInvalid_Animal
	_io *kaitai.Stream
	_root *EnumInvalid
	_parent interface{}
}

func (this *EnumInvalid) Read(io *kaitai.Stream, parent interface{}, root *EnumInvalid) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Pet1 = EnumInvalid_Animal(tmp1)
	tmp2, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Pet2 = EnumInvalid_Animal(tmp2)
	return err
}
