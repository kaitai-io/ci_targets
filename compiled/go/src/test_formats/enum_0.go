// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"


type Enum0_Animal int
const (
	Enum0_Animal__Dog Enum0_Animal = 4
	Enum0_Animal__Cat Enum0_Animal = 7
	Enum0_Animal__Chicken Enum0_Animal = 12
)
var values_Enum0_Animal = map[Enum0_Animal]struct{}{4: {}, 7: {}, 12: {}}
func (v Enum0_Animal) isDefined() bool {
	_, ok := values_Enum0_Animal[v]
	return ok
}
type Enum0 struct {
	Pet1 Enum0_Animal
	Pet2 Enum0_Animal
	_io *kaitai.Stream
	_root *Enum0
	_parent kaitai.Struct
}
func NewEnum0() *Enum0 {
	return &Enum0{
	}
}

func (this Enum0) IO_() *kaitai.Stream {
	return this._io
}

func (this *Enum0) Read(io *kaitai.Stream, parent kaitai.Struct, root *Enum0) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Pet1 = Enum0_Animal(tmp1)
	tmp2, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Pet2 = Enum0_Animal(tmp2)
	return err
}
