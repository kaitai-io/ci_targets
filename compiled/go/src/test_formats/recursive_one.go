// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type RecursiveOne struct {
	One uint8
	Next interface{}
	_io *kaitai.Stream
	_root *RecursiveOne
	_parent interface{}
}

func (this *RecursiveOne) Read(io *kaitai.Stream, parent interface{}, root *RecursiveOne) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.One = tmp1
	switch ((this.One & 3)) {
	case 0:
		tmp2 := new(RecursiveOne)
		err = tmp2.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Next = tmp2
	case 1:
		tmp3 := new(RecursiveOne)
		err = tmp3.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Next = tmp3
	case 2:
		tmp4 := new(RecursiveOne)
		err = tmp4.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Next = tmp4
	case 3:
		tmp5 := new(RecursiveOne_Fini)
		err = tmp5.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Next = tmp5
	}
	return err
}
type RecursiveOne_Fini struct {
	Finisher uint16
	_io *kaitai.Stream
	_root *RecursiveOne
	_parent *RecursiveOne
}

func (this *RecursiveOne_Fini) Read(io *kaitai.Stream, parent *RecursiveOne, root *RecursiveOne) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp6, err := this._io.ReadU2le()
	if err != nil {
		return err
	}
	this.Finisher = uint16(tmp6)
	return err
}
