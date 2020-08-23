// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"


type CombineEnum_Animal int
const (
	CombineEnum_Animal__Pig CombineEnum_Animal = 7
	CombineEnum_Animal__Horse CombineEnum_Animal = 12
)
type CombineEnum struct {
	EnumU4 CombineEnum_Animal
	EnumU2 CombineEnum_Animal
	_io *kaitai.Stream
	_root *CombineEnum
	_parent interface{}
	_f_enumU4U2 bool
	enumU4U2 CombineEnum_Animal
}
func NewCombineEnum() *CombineEnum {
	return &CombineEnum{
	}
}

func (this *CombineEnum) Read(io *kaitai.Stream, parent interface{}, root *CombineEnum) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.EnumU4 = CombineEnum_Animal(tmp1)
	tmp2, err := this._io.ReadU2le()
	if err != nil {
		return err
	}
	this.EnumU2 = CombineEnum_Animal(tmp2)
	return err
}
func (this *CombineEnum) EnumU4U2() (v CombineEnum_Animal, err error) {
	if (this._f_enumU4U2) {
		return this.enumU4U2, nil
	}
	var tmp3 CombineEnum_Animal;
	if (false) {
		tmp3 = this.EnumU4
	} else {
		tmp3 = this.EnumU2
	}
	this.enumU4U2 = CombineEnum_Animal(tmp3)
	this._f_enumU4U2 = true
	return this.enumU4U2, nil
}
