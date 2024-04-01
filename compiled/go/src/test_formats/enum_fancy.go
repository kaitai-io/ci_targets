// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"


type EnumFancy_Animal int
const (
	EnumFancy_Animal__Dog EnumFancy_Animal = 4
	EnumFancy_Animal__Cat EnumFancy_Animal = 7
	EnumFancy_Animal__Chicken EnumFancy_Animal = 12
)
type EnumFancy struct {
	Pet1 EnumFancy_Animal
	Pet2 EnumFancy_Animal
	_io *kaitai.Stream
	_root *EnumFancy
	_parent kaitai.Struct
}
func NewEnumFancy() *EnumFancy {
	return &EnumFancy{
	}
}

func (this EnumFancy) IO_() *kaitai.Stream {
	return this._io
}

func (this *EnumFancy) Read(io *kaitai.Stream, parent kaitai.Struct, root *EnumFancy) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Pet1 = EnumFancy_Animal(tmp1)
	tmp2, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Pet2 = EnumFancy_Animal(tmp2)
	return err
}
