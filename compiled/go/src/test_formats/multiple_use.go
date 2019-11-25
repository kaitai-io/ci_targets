// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"io"
)

type MultipleUse struct {
	T1 *MultipleUse_Type1
	T2 *MultipleUse_Type2
	_io *kaitai.Stream
	_root *MultipleUse
	_parent interface{}
}

func (this *MultipleUse) Read(io *kaitai.Stream, parent interface{}, root *MultipleUse) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1 := new(MultipleUse_Type1)
	err = tmp1.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.T1 = tmp1
	tmp2 := new(MultipleUse_Type2)
	err = tmp2.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.T2 = tmp2
	return err
}
type MultipleUse_Multi struct {
	Value int32
	_io *kaitai.Stream
	_root *MultipleUse
	_parent interface{}
}

func (this *MultipleUse_Multi) Read(io *kaitai.Stream, parent interface{}, root *MultipleUse) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp3, err := this._io.ReadS4le()
	if err != nil {
		return err
	}
	this.Value = int32(tmp3)
	return err
}
type MultipleUse_Type1 struct {
	FirstUse *MultipleUse_Multi
	_io *kaitai.Stream
	_root *MultipleUse
	_parent *MultipleUse
}

func (this *MultipleUse_Type1) Read(io *kaitai.Stream, parent *MultipleUse, root *MultipleUse) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp4 := new(MultipleUse_Multi)
	err = tmp4.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.FirstUse = tmp4
	return err
}
type MultipleUse_Type2 struct {
	_io *kaitai.Stream
	_root *MultipleUse
	_parent *MultipleUse
	_f_secondUse bool
	secondUse *MultipleUse_Multi
}

func (this *MultipleUse_Type2) Read(io *kaitai.Stream, parent *MultipleUse, root *MultipleUse) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	return err
}
func (this *MultipleUse_Type2) SecondUse() (v *MultipleUse_Multi, err error) {
	if (this._f_secondUse) {
		return this.secondUse, nil
	}
	_pos, err := this._io.Pos()
	if err != nil {
		return nil, err
	}
	_, err = this._io.Seek(int64(0), io.SeekStart)
	if err != nil {
		return nil, err
	}
	tmp5 := new(MultipleUse_Multi)
	err = tmp5.Read(this._io, this, this._root)
	if err != nil {
		return nil, err
	}
	this.secondUse = tmp5
	_, err = this._io.Seek(_pos, io.SeekStart)
	if err != nil {
		return nil, err
	}
	this._f_secondUse = true
	this._f_secondUse = true
	return this.secondUse, nil
}
