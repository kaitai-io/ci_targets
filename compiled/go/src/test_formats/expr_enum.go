// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"


type ExprEnum_Animal int
const (
	ExprEnum_Animal__Dog ExprEnum_Animal = 4
	ExprEnum_Animal__Cat ExprEnum_Animal = 7
	ExprEnum_Animal__Chicken ExprEnum_Animal = 12
	ExprEnum_Animal__Boom ExprEnum_Animal = 102
)
type ExprEnum struct {
	One uint8
	_io *kaitai.Stream
	_root *ExprEnum
	_parent interface{}
	_f_constDog bool
	constDog ExprEnum_Animal
	_f_derivedBoom bool
	derivedBoom ExprEnum_Animal
	_f_derivedDog bool
	derivedDog ExprEnum_Animal
}
func NewExprEnum() *ExprEnum {
	return &ExprEnum{
	}
}

func (this *ExprEnum) Read(io *kaitai.Stream, parent interface{}, root *ExprEnum) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.One = tmp1
	return err
}
func (this *ExprEnum) ConstDog() (v ExprEnum_Animal, err error) {
	if (this._f_constDog) {
		return this.constDog, nil
	}
	this.constDog = ExprEnum_Animal(ExprEnum_Animal(4))
	this._f_constDog = true
	return this.constDog, nil
}
func (this *ExprEnum) DerivedBoom() (v ExprEnum_Animal, err error) {
	if (this._f_derivedBoom) {
		return this.derivedBoom, nil
	}
	this.derivedBoom = ExprEnum_Animal(ExprEnum_Animal(this.One))
	this._f_derivedBoom = true
	return this.derivedBoom, nil
}
func (this *ExprEnum) DerivedDog() (v ExprEnum_Animal, err error) {
	if (this._f_derivedDog) {
		return this.derivedDog, nil
	}
	this.derivedDog = ExprEnum_Animal(ExprEnum_Animal((this.One - 98)))
	this._f_derivedDog = true
	return this.derivedDog, nil
}
