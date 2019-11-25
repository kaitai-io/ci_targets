// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"io"
)

type PositionInSeq struct {
	Numbers []uint8
	_io *kaitai.Stream
	_root *PositionInSeq
	_parent interface{}
	_f_header bool
	header *PositionInSeq_HeaderObj
}

func (this *PositionInSeq) Read(io *kaitai.Stream, parent interface{}, root *PositionInSeq) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this.Header()
	if err != nil {
		return err
	}
	this.Numbers = make([]uint8, tmp1.QtyNumbers)
	for i := range this.Numbers {
		tmp2, err := this._io.ReadU1()
		if err != nil {
			return err
		}
		this.Numbers[i] = tmp2
	}
	return err
}
func (this *PositionInSeq) Header() (v *PositionInSeq_HeaderObj, err error) {
	if (this._f_header) {
		return this.header, nil
	}
	_pos, err := this._io.Pos()
	if err != nil {
		return nil, err
	}
	_, err = this._io.Seek(int64(16), io.SeekStart)
	if err != nil {
		return nil, err
	}
	tmp3 := new(PositionInSeq_HeaderObj)
	err = tmp3.Read(this._io, this, this._root)
	if err != nil {
		return nil, err
	}
	this.header = tmp3
	_, err = this._io.Seek(_pos, io.SeekStart)
	if err != nil {
		return nil, err
	}
	this._f_header = true
	this._f_header = true
	return this.header, nil
}
type PositionInSeq_HeaderObj struct {
	QtyNumbers uint32
	_io *kaitai.Stream
	_root *PositionInSeq
	_parent *PositionInSeq
}

func (this *PositionInSeq_HeaderObj) Read(io *kaitai.Stream, parent *PositionInSeq, root *PositionInSeq) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp4, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.QtyNumbers = uint32(tmp4)
	return err
}
