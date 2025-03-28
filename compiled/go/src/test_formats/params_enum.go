// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"


type ParamsEnum_Animal int
const (
	ParamsEnum_Animal__Dog ParamsEnum_Animal = 4
	ParamsEnum_Animal__Cat ParamsEnum_Animal = 7
	ParamsEnum_Animal__Chicken ParamsEnum_Animal = 12
)
var values_ParamsEnum_Animal = map[ParamsEnum_Animal]struct{}{4: {}, 7: {}, 12: {}}
func (v ParamsEnum_Animal) isDefined() bool {
	_, ok := values_ParamsEnum_Animal[v]
	return ok
}
type ParamsEnum struct {
	One ParamsEnum_Animal
	InvokeWithParam *ParamsEnum_WithParam
	_io *kaitai.Stream
	_root *ParamsEnum
	_parent kaitai.Struct
}
func NewParamsEnum() *ParamsEnum {
	return &ParamsEnum{
	}
}

func (this ParamsEnum) IO_() *kaitai.Stream {
	return this._io
}

func (this *ParamsEnum) Read(io *kaitai.Stream, parent kaitai.Struct, root *ParamsEnum) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.One = ParamsEnum_Animal(tmp1)
	tmp2 := NewParamsEnum_WithParam(this.One)
	err = tmp2.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.InvokeWithParam = tmp2
	return err
}
type ParamsEnum_WithParam struct {
	EnumeratedOne ParamsEnum_Animal
	_io *kaitai.Stream
	_root *ParamsEnum
	_parent *ParamsEnum
	_f_isCat bool
	isCat bool
}
func NewParamsEnum_WithParam(enumeratedOne ParamsEnum_Animal) *ParamsEnum_WithParam {
	return &ParamsEnum_WithParam{
		EnumeratedOne: enumeratedOne,
	}
}

func (this ParamsEnum_WithParam) IO_() *kaitai.Stream {
	return this._io
}

func (this *ParamsEnum_WithParam) Read(io *kaitai.Stream, parent *ParamsEnum, root *ParamsEnum) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	return err
}
func (this *ParamsEnum_WithParam) IsCat() (v bool, err error) {
	if (this._f_isCat) {
		return this.isCat, nil
	}
	this._f_isCat = true
	this.isCat = bool(this.EnumeratedOne == ParamsEnum_Animal__Cat)
	return this.isCat, nil
}
