// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type NavParentFalse struct {
	ChildSize uint8
	ElementA *NavParentFalse_ParentA
	ElementB *NavParentFalse_ParentB
	_io *kaitai.Stream
	_root *NavParentFalse
	_parent interface{}
}
func NewNavParentFalse() *NavParentFalse {
	return &NavParentFalse{
	}
}

func (this *NavParentFalse) Read(io *kaitai.Stream, parent interface{}, root *NavParentFalse) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.ChildSize = tmp1
	tmp2 := NewNavParentFalse_ParentA()
	err = tmp2.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.ElementA = tmp2
	tmp3 := NewNavParentFalse_ParentB()
	err = tmp3.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.ElementB = tmp3
	return err
}
type NavParentFalse_ParentA struct {
	Foo *NavParentFalse_Child
	Bar *NavParentFalse_ParentB
	_io *kaitai.Stream
	_root *NavParentFalse
	_parent *NavParentFalse
}
func NewNavParentFalse_ParentA() *NavParentFalse_ParentA {
	return &NavParentFalse_ParentA{
	}
}

func (this *NavParentFalse_ParentA) Read(io *kaitai.Stream, parent *NavParentFalse, root *NavParentFalse) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp4 := NewNavParentFalse_Child()
	err = tmp4.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Foo = tmp4
	tmp5 := NewNavParentFalse_ParentB()
	err = tmp5.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Bar = tmp5
	return err
}
type NavParentFalse_ParentB struct {
	Foo *NavParentFalse_Child
	_io *kaitai.Stream
	_root *NavParentFalse
	_parent interface{}
}
func NewNavParentFalse_ParentB() *NavParentFalse_ParentB {
	return &NavParentFalse_ParentB{
	}
}

func (this *NavParentFalse_ParentB) Read(io *kaitai.Stream, parent interface{}, root *NavParentFalse) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp6 := NewNavParentFalse_Child()
	err = tmp6.Read(this._io, nil, this._root)
	if err != nil {
		return err
	}
	this.Foo = tmp6
	return err
}
type NavParentFalse_Child struct {
	Code uint8
	More []byte
	_io *kaitai.Stream
	_root *NavParentFalse
	_parent *NavParentFalse_ParentA
}
func NewNavParentFalse_Child() *NavParentFalse_Child {
	return &NavParentFalse_Child{
	}
}

func (this *NavParentFalse_Child) Read(io *kaitai.Stream, parent *NavParentFalse_ParentA, root *NavParentFalse) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp7, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Code = tmp7
	if (this.Code == 73) {
		tmp8, err := this._io.ReadBytes(int(this._parent._parent.ChildSize))
		if err != nil {
			return err
		}
		tmp8 = tmp8
		this.More = tmp8
	}
	return err
}
