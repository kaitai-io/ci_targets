// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type NestedTypes struct {
	One *NestedTypes_SubtypeA
	Two *NestedTypes_SubtypeB
	_io *kaitai.Stream
	_root *NestedTypes
	_parent interface{}
}

func (this *NestedTypes) Read(io *kaitai.Stream, parent interface{}, root *NestedTypes) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1 := new(NestedTypes_SubtypeA)
	err = tmp1.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.One = tmp1
	tmp2 := new(NestedTypes_SubtypeB)
	err = tmp2.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Two = tmp2
	return err
}
type NestedTypes_SubtypeA struct {
	TypedAtRoot *NestedTypes_SubtypeB
	TypedHere *NestedTypes_SubtypeA_SubtypeC
	_io *kaitai.Stream
	_root *NestedTypes
	_parent *NestedTypes
}

func (this *NestedTypes_SubtypeA) Read(io *kaitai.Stream, parent *NestedTypes, root *NestedTypes) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp3 := new(NestedTypes_SubtypeB)
	err = tmp3.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.TypedAtRoot = tmp3
	tmp4 := new(NestedTypes_SubtypeA_SubtypeC)
	err = tmp4.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.TypedHere = tmp4
	return err
}
type NestedTypes_SubtypeA_SubtypeC struct {
	ValueC int8
	_io *kaitai.Stream
	_root *NestedTypes
	_parent *NestedTypes_SubtypeA
}

func (this *NestedTypes_SubtypeA_SubtypeC) Read(io *kaitai.Stream, parent *NestedTypes_SubtypeA, root *NestedTypes) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp5, err := this._io.ReadS1()
	if err != nil {
		return err
	}
	this.ValueC = tmp5
	return err
}
type NestedTypes_SubtypeB struct {
	ValueB int8
	_io *kaitai.Stream
	_root *NestedTypes
	_parent interface{}
}

func (this *NestedTypes_SubtypeB) Read(io *kaitai.Stream, parent interface{}, root *NestedTypes) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp6, err := this._io.ReadS1()
	if err != nil {
		return err
	}
	this.ValueB = tmp6
	return err
}
