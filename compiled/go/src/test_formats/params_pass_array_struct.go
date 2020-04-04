// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type ParamsPassArrayStruct struct {
	One *ParamsPassArrayStruct_Foo
	Two *ParamsPassArrayStruct_Bar
	PassStructs *ParamsPassArrayStruct_StructType
	_io *kaitai.Stream
	_root *ParamsPassArrayStruct
	_parent interface{}
	_f_oneTwo bool
	oneTwo []interface{}
}

func (this *ParamsPassArrayStruct) Read(io *kaitai.Stream, parent interface{}, root *ParamsPassArrayStruct) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1 := new(ParamsPassArrayStruct_Foo)
	err = tmp1.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.One = tmp1
	tmp2 := new(ParamsPassArrayStruct_Bar)
	err = tmp2.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Two = tmp2
	tmp3 := new(ParamsPassArrayStruct_StructType)
	err = tmp3.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.PassStructs = tmp3
	return err
}
func (this *ParamsPassArrayStruct) OneTwo() (v []interface{}, err error) {
	if (this._f_oneTwo) {
		return this.oneTwo, nil
	}
	this.oneTwo = []interface{}([]interface{}{this.One, this.Two})
	this._f_oneTwo = true
	return this.oneTwo, nil
}
type ParamsPassArrayStruct_Foo struct {
	F uint8
	_io *kaitai.Stream
	_root *ParamsPassArrayStruct
	_parent *ParamsPassArrayStruct
}

func (this *ParamsPassArrayStruct_Foo) Read(io *kaitai.Stream, parent *ParamsPassArrayStruct, root *ParamsPassArrayStruct) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp4, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.F = tmp4
	return err
}
type ParamsPassArrayStruct_Bar struct {
	B uint8
	_io *kaitai.Stream
	_root *ParamsPassArrayStruct
	_parent *ParamsPassArrayStruct
}

func (this *ParamsPassArrayStruct_Bar) Read(io *kaitai.Stream, parent *ParamsPassArrayStruct, root *ParamsPassArrayStruct) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp5, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.B = tmp5
	return err
}
type ParamsPassArrayStruct_StructType struct {
	_io *kaitai.Stream
	_root *ParamsPassArrayStruct
	_parent *ParamsPassArrayStruct
}

func (this *ParamsPassArrayStruct_StructType) Read(io *kaitai.Stream, parent *ParamsPassArrayStruct, root *ParamsPassArrayStruct) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	return err
}
