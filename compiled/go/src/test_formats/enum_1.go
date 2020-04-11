// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type Enum1 struct {
	Main *Enum1_MainObj
	_io *kaitai.Stream
	_root *Enum1
	_parent interface{}
}
func NewEnum1() *Enum1 {
	return &Enum1{
	}
}

func (this *Enum1) Read(io *kaitai.Stream, parent interface{}, root *Enum1) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1 := NewEnum1_MainObj()
	err = tmp1.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Main = tmp1
	return err
}

type Enum1_MainObj_Animal int
const (
	Enum1_MainObj_Animal__Dog Enum1_MainObj_Animal = 4
	Enum1_MainObj_Animal__Cat Enum1_MainObj_Animal = 7
	Enum1_MainObj_Animal__Chicken Enum1_MainObj_Animal = 12
)
type Enum1_MainObj struct {
	Submain *Enum1_MainObj_SubmainObj
	_io *kaitai.Stream
	_root *Enum1
	_parent *Enum1
}
func NewEnum1_MainObj() *Enum1_MainObj {
	return &Enum1_MainObj{
	}
}

func (this *Enum1_MainObj) Read(io *kaitai.Stream, parent *Enum1, root *Enum1) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp2 := NewEnum1_MainObj_SubmainObj()
	err = tmp2.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Submain = tmp2
	return err
}
type Enum1_MainObj_SubmainObj struct {
	Pet1 Enum1_MainObj_Animal
	Pet2 Enum1_MainObj_Animal
	_io *kaitai.Stream
	_root *Enum1
	_parent *Enum1_MainObj
}
func NewEnum1_MainObj_SubmainObj() *Enum1_MainObj_SubmainObj {
	return &Enum1_MainObj_SubmainObj{
	}
}

func (this *Enum1_MainObj_SubmainObj) Read(io *kaitai.Stream, parent *Enum1_MainObj, root *Enum1) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp3, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Pet1 = Enum1_MainObj_Animal(tmp3)
	tmp4, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Pet2 = Enum1_MainObj_Animal(tmp4)
	return err
}
