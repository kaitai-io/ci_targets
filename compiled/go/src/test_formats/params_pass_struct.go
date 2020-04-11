// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type ParamsPassStruct struct {
	First *ParamsPassStruct_Block
	One *ParamsPassStruct_StructType
	_io *kaitai.Stream
	_root *ParamsPassStruct
	_parent interface{}
}
func NewParamsPassStruct() *ParamsPassStruct {
	return &ParamsPassStruct{
	}
}

func (this *ParamsPassStruct) Read(io *kaitai.Stream, parent interface{}, root *ParamsPassStruct) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1 := NewParamsPassStruct_Block()
	err = tmp1.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.First = tmp1
	tmp2 := NewParamsPassStruct_StructType(this.First)
	err = tmp2.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.One = tmp2
	return err
}
type ParamsPassStruct_Block struct {
	Foo uint8
	_io *kaitai.Stream
	_root *ParamsPassStruct
	_parent *ParamsPassStruct
}
func NewParamsPassStruct_Block() *ParamsPassStruct_Block {
	return &ParamsPassStruct_Block{
	}
}

func (this *ParamsPassStruct_Block) Read(io *kaitai.Stream, parent *ParamsPassStruct, root *ParamsPassStruct) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp3, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Foo = tmp3
	return err
}
type ParamsPassStruct_StructType struct {
	Bar *ParamsPassStruct_StructType_Baz
	Foo interface{}
	_io *kaitai.Stream
	_root *ParamsPassStruct
	_parent *ParamsPassStruct
}
func NewParamsPassStruct_StructType(foo interface{}) *ParamsPassStruct_StructType {
	return &ParamsPassStruct_StructType{
		Foo: foo,
	}
}

func (this *ParamsPassStruct_StructType) Read(io *kaitai.Stream, parent *ParamsPassStruct, root *ParamsPassStruct) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp4 := NewParamsPassStruct_StructType_Baz(this.Foo)
	err = tmp4.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Bar = tmp4
	return err
}
type ParamsPassStruct_StructType_Baz struct {
	Qux uint8
	Foo interface{}
	_io *kaitai.Stream
	_root *ParamsPassStruct
	_parent *ParamsPassStruct_StructType
}
func NewParamsPassStruct_StructType_Baz(foo interface{}) *ParamsPassStruct_StructType_Baz {
	return &ParamsPassStruct_StructType_Baz{
		Foo: foo,
	}
}

func (this *ParamsPassStruct_StructType_Baz) Read(io *kaitai.Stream, parent *ParamsPassStruct_StructType, root *ParamsPassStruct) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp5, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Qux = tmp5
	return err
}
