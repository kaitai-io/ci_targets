// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type NestedTypeParam struct {
	MainSeq *NestedTypeParam_Nested_MyType
	_io *kaitai.Stream
	_root *NestedTypeParam
	_parent interface{}
}

func (this *NestedTypeParam) Read(io *kaitai.Stream, parent interface{}, root *NestedTypeParam) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1 := new(NestedTypeParam_Nested_MyType)
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
	_parent interface{}
}

func (this *NestedTypeParam_Nested) Read(io *kaitai.Stream, parent interface{}, root *NestedTypeParam) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	return err
}
type NestedTypeParam_Nested_MyType struct {
	Body string
	_io *kaitai.Stream
	_root *NestedTypeParam
	_parent *NestedTypeParam
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
