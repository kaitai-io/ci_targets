// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type BitsSeqEndianCombo struct {
	Be1 uint64
	Be2 uint64
	Le3 uint64
	Be4 uint64
	Le5 uint64
	Le6 uint64
	Le7 uint64
	Be8 bool
	_io *kaitai.Stream
	_root *BitsSeqEndianCombo
	_parent interface{}
}
func NewBitsSeqEndianCombo() *BitsSeqEndianCombo {
	return &BitsSeqEndianCombo{
	}
}

func (this *BitsSeqEndianCombo) Read(io *kaitai.Stream, parent interface{}, root *BitsSeqEndianCombo) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadBitsInt(6)
	if err != nil {
		return err
	}
	this.Be1 = tmp1
	tmp2, err := this._io.ReadBitsInt(10)
	if err != nil {
		return err
	}
	this.Be2 = tmp2
	tmp3, err := this._io.ReadBitsInt(8)
	if err != nil {
		return err
	}
	this.Le3 = tmp3
	tmp4, err := this._io.ReadBitsInt(8)
	if err != nil {
		return err
	}
	this.Be4 = tmp4
	tmp5, err := this._io.ReadBitsInt(5)
	if err != nil {
		return err
	}
	this.Le5 = tmp5
	tmp6, err := this._io.ReadBitsInt(6)
	if err != nil {
		return err
	}
	this.Le6 = tmp6
	tmp7, err := this._io.ReadBitsInt(5)
	if err != nil {
		return err
	}
	this.Le7 = tmp7
	tmp8, err := this._io.ReadBitsInt(1)
	if err != nil {
		return err
	}
	this.Be8 = tmp8 != 0
	return err
}
