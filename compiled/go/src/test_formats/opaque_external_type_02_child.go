// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type OpaqueExternalType02Child struct {
	S1 string
	S2 string
	S3 *OpaqueExternalType02Child_OpaqueExternalType02ChildChild
	_io *kaitai.Stream
	_root *OpaqueExternalType02Child
	_parent interface{}
	_f_someMethod bool
	someMethod bool
}
func NewOpaqueExternalType02Child() *OpaqueExternalType02Child {
	return &OpaqueExternalType02Child{
	}
}

func (this *OpaqueExternalType02Child) Read(io *kaitai.Stream, parent interface{}, root *OpaqueExternalType02Child) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadBytesTerm(124, false, true, true)
	if err != nil {
		return err
	}
	this.S1 = string(tmp1)
	tmp2, err := this._io.ReadBytesTerm(124, false, false, true)
	if err != nil {
		return err
	}
	this.S2 = string(tmp2)
	tmp3 := NewOpaqueExternalType02Child_OpaqueExternalType02ChildChild()
	err = tmp3.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.S3 = tmp3
	return err
}
func (this *OpaqueExternalType02Child) SomeMethod() (v bool, err error) {
	if (this._f_someMethod) {
		return this.someMethod, nil
	}
	this.someMethod = bool(true)
	this._f_someMethod = true
	return this.someMethod, nil
}
type OpaqueExternalType02Child_OpaqueExternalType02ChildChild struct {
	S3 string
	_io *kaitai.Stream
	_root *OpaqueExternalType02Child
	_parent *OpaqueExternalType02Child
}
func NewOpaqueExternalType02Child_OpaqueExternalType02ChildChild() *OpaqueExternalType02Child_OpaqueExternalType02ChildChild {
	return &OpaqueExternalType02Child_OpaqueExternalType02ChildChild{
	}
}

func (this *OpaqueExternalType02Child_OpaqueExternalType02ChildChild) Read(io *kaitai.Stream, parent *OpaqueExternalType02Child, root *OpaqueExternalType02Child) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp4, err := this._root.SomeMethod()
	if err != nil {
		return err
	}
	if (tmp4) {
		tmp5, err := this._io.ReadBytesTerm(64, true, true, true)
		if err != nil {
			return err
		}
		this.S3 = string(tmp5)
	}
	return err
}
