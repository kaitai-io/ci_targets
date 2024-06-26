// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type NestedTypeParam struct {
	MainSeq *NestedTypeParam_Nested_MyType
	_io *kaitai.Stream
	_root *NestedTypeParam
	_parent kaitai.Struct
}
func NewNestedTypeParam() *NestedTypeParam {
	return &NestedTypeParam{
	}
}

func (this NestedTypeParam) IO_() *kaitai.Stream {
	return this._io
}

func (this *NestedTypeParam) Read(io *kaitai.Stream, parent kaitai.Struct, root *NestedTypeParam) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1 := NewNestedTypeParam_Nested_MyType(5)
	err = tmp1.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.MainSeq = tmp1
	return err
}
type NestedTypeParam_Nested struct {
	_io *kaitai.Stream
	_root *NestedTypeParam
	_parent kaitai.Struct
}
func NewNestedTypeParam_Nested() *NestedTypeParam_Nested {
	return &NestedTypeParam_Nested{
	}
}

func (this NestedTypeParam_Nested) IO_() *kaitai.Stream {
	return this._io
}

func (this *NestedTypeParam_Nested) Read(io *kaitai.Stream, parent kaitai.Struct, root *NestedTypeParam) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	return err
}
type NestedTypeParam_Nested_MyType struct {
	Body string
	MyLen uint32
	_io *kaitai.Stream
	_root *NestedTypeParam
	_parent *NestedTypeParam
}
func NewNestedTypeParam_Nested_MyType(myLen uint32) *NestedTypeParam_Nested_MyType {
	return &NestedTypeParam_Nested_MyType{
		MyLen: myLen,
	}
}

func (this NestedTypeParam_Nested_MyType) IO_() *kaitai.Stream {
	return this._io
}

func (this *NestedTypeParam_Nested_MyType) Read(io *kaitai.Stream, parent *NestedTypeParam, root *NestedTypeParam) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp2, err := this._io.ReadBytes(int(this.MyLen))
	if err != nil {
		return err
	}
	tmp2 = tmp2
	this.Body = string(tmp2)
	return err
}
