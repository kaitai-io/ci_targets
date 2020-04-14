// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type NestedTypes3 struct {
	ACc *NestedTypes3_SubtypeA_SubtypeCc
	ACD *NestedTypes3_SubtypeA_SubtypeC_SubtypeD
	B *NestedTypes3_SubtypeB
	_io *kaitai.Stream
	_root *NestedTypes3
	_parent interface{}
}
func NewNestedTypes3() *NestedTypes3 {
	return &NestedTypes3{
	}
}

func (this *NestedTypes3) Read(io *kaitai.Stream, parent interface{}, root *NestedTypes3) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1 := NewNestedTypes3_SubtypeA_SubtypeCc()
	err = tmp1.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.ACc = tmp1
	tmp2 := NewNestedTypes3_SubtypeA_SubtypeC_SubtypeD()
	err = tmp2.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.ACD = tmp2
	tmp3 := NewNestedTypes3_SubtypeB()
	err = tmp3.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.B = tmp3
	return err
}
type NestedTypes3_SubtypeA struct {
	_io *kaitai.Stream
	_root *NestedTypes3
	_parent interface{}
}
func NewNestedTypes3_SubtypeA() *NestedTypes3_SubtypeA {
	return &NestedTypes3_SubtypeA{
	}
}

func (this *NestedTypes3_SubtypeA) Read(io *kaitai.Stream, parent interface{}, root *NestedTypes3) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	return err
}
type NestedTypes3_SubtypeA_SubtypeC struct {
	_io *kaitai.Stream
	_root *NestedTypes3
	_parent interface{}
}
func NewNestedTypes3_SubtypeA_SubtypeC() *NestedTypes3_SubtypeA_SubtypeC {
	return &NestedTypes3_SubtypeA_SubtypeC{
	}
}

func (this *NestedTypes3_SubtypeA_SubtypeC) Read(io *kaitai.Stream, parent interface{}, root *NestedTypes3) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	return err
}
type NestedTypes3_SubtypeA_SubtypeC_SubtypeD struct {
	ValueD int8
	_io *kaitai.Stream
	_root *NestedTypes3
	_parent interface{}
}
func NewNestedTypes3_SubtypeA_SubtypeC_SubtypeD() *NestedTypes3_SubtypeA_SubtypeC_SubtypeD {
	return &NestedTypes3_SubtypeA_SubtypeC_SubtypeD{
	}
}

func (this *NestedTypes3_SubtypeA_SubtypeC_SubtypeD) Read(io *kaitai.Stream, parent interface{}, root *NestedTypes3) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp4, err := this._io.ReadS1()
	if err != nil {
		return err
	}
	this.ValueD = tmp4
	return err
}
type NestedTypes3_SubtypeA_SubtypeCc struct {
	ValueCc int8
	_io *kaitai.Stream
	_root *NestedTypes3
	_parent interface{}
}
func NewNestedTypes3_SubtypeA_SubtypeCc() *NestedTypes3_SubtypeA_SubtypeCc {
	return &NestedTypes3_SubtypeA_SubtypeCc{
	}
}

func (this *NestedTypes3_SubtypeA_SubtypeCc) Read(io *kaitai.Stream, parent interface{}, root *NestedTypes3) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp5, err := this._io.ReadS1()
	if err != nil {
		return err
	}
	this.ValueCc = tmp5
	return err
}
type NestedTypes3_SubtypeB struct {
	ValueB int8
	ACc *NestedTypes3_SubtypeA_SubtypeCc
	ACD *NestedTypes3_SubtypeA_SubtypeC_SubtypeD
	_io *kaitai.Stream
	_root *NestedTypes3
	_parent *NestedTypes3
}
func NewNestedTypes3_SubtypeB() *NestedTypes3_SubtypeB {
	return &NestedTypes3_SubtypeB{
	}
}

func (this *NestedTypes3_SubtypeB) Read(io *kaitai.Stream, parent *NestedTypes3, root *NestedTypes3) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp6, err := this._io.ReadS1()
	if err != nil {
		return err
	}
	this.ValueB = tmp6
	tmp7 := NewNestedTypes3_SubtypeA_SubtypeCc()
	err = tmp7.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.ACc = tmp7
	tmp8 := NewNestedTypes3_SubtypeA_SubtypeC_SubtypeD()
	err = tmp8.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.ACD = tmp8
	return err
}
