// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"


type BitsEnum_Animal int
const (
	BitsEnum_Animal__Cat BitsEnum_Animal = 0
	BitsEnum_Animal__Dog BitsEnum_Animal = 1
	BitsEnum_Animal__Horse BitsEnum_Animal = 4
	BitsEnum_Animal__Platypus BitsEnum_Animal = 5
)
type BitsEnum struct {
	One BitsEnum_Animal
	Two BitsEnum_Animal
	Three BitsEnum_Animal
	_io *kaitai.Stream
	_root *BitsEnum
	_parent interface{}
}
func NewBitsEnum() *BitsEnum {
	return &BitsEnum{
	}
}

func (this *BitsEnum) Read(io *kaitai.Stream, parent interface{}, root *BitsEnum) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadBitsIntBe(4)
	if err != nil {
		return err
	}
	this.One = BitsEnum_Animal(tmp1)
	tmp2, err := this._io.ReadBitsIntBe(8)
	if err != nil {
		return err
	}
	this.Two = BitsEnum_Animal(tmp2)
	tmp3, err := this._io.ReadBitsIntBe(1)
	if err != nil {
		return err
	}
	this.Three = BitsEnum_Animal(tmp3)
	return err
}
