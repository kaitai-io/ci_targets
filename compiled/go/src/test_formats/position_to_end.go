// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"io"
)

type PositionToEnd struct {
	_io *kaitai.Stream
	_root *PositionToEnd
	_parent interface{}
	_f_index bool
	index *PositionToEnd_IndexObj
}

func (this *PositionToEnd) Read(io *kaitai.Stream, parent interface{}, root *PositionToEnd) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	return err
}
func (this *PositionToEnd) Index() (v *PositionToEnd_IndexObj, err error) {
	if (this._f_index) {
		return this.index, nil
	}
	_pos, err := this._io.Pos()
	if err != nil {
		return nil, err
	}
	tmp1, err := this._io.Size()
	if err != nil {
		return nil, err
	}
	_, err = this._io.Seek(int64((tmp1 - 8)), io.SeekStart)
	if err != nil {
		return nil, err
	}
	tmp2 := new(PositionToEnd_IndexObj)
	err = tmp2.Read(this._io, this, this._root)
	if err != nil {
		return nil, err
	}
	this.index = tmp2
	_, err = this._io.Seek(_pos, io.SeekStart)
	if err != nil {
		return nil, err
	}
	this._f_index = true
	this._f_index = true
	return this.index, nil
}
type PositionToEnd_IndexObj struct {
	Foo uint32
	Bar uint32
	_io *kaitai.Stream
	_root *PositionToEnd
	_parent *PositionToEnd
}

func (this *PositionToEnd_IndexObj) Read(io *kaitai.Stream, parent *PositionToEnd, root *PositionToEnd) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp3, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Foo = uint32(tmp3)
	tmp4, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Bar = uint32(tmp4)
	return err
}
