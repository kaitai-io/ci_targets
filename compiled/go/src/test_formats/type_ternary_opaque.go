// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"bytes"
)

type TypeTernaryOpaque struct {
	DifWoHack *TermStrz
	DifWithHack *TermStrz
	_io *kaitai.Stream
	_root *TypeTernaryOpaque
	_parent interface{}
	_raw_DifWoHack []byte
	_raw_DifWithHack []byte
	_raw__raw_DifWithHack []byte
	_f_dif bool
	dif *TermStrz
	_f_isHack bool
	isHack bool
}
func NewTypeTernaryOpaque() *TypeTernaryOpaque {
	return &TypeTernaryOpaque{
	}
}

func (this *TypeTernaryOpaque) Read(io *kaitai.Stream, parent interface{}, root *TypeTernaryOpaque) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this.IsHack()
	if err != nil {
		return err
	}
	if (!(tmp1)) {
		tmp2, err := this._io.ReadBytes(int(12))
		if err != nil {
			return err
		}
		tmp2 = tmp2
		this._raw_DifWoHack = tmp2
		_io__raw_DifWoHack := kaitai.NewStream(bytes.NewReader(this._raw_DifWoHack))
		tmp3 := NewTermStrz()
		err = tmp3.Read(_io__raw_DifWoHack, this, nil)
		if err != nil {
			return err
		}
		this.DifWoHack = tmp3
	}
	tmp4, err := this.IsHack()
	if err != nil {
		return err
	}
	if (tmp4) {
		tmp5, err := this._io.ReadBytes(int(12))
		if err != nil {
			return err
		}
		tmp5 = tmp5
		this._raw__raw_DifWithHack = tmp5
		this._raw_DifWithHack = kaitai.ProcessXOR(this._raw__raw_DifWithHack, []byte{3})
		_io__raw_DifWithHack := kaitai.NewStream(bytes.NewReader(this._raw_DifWithHack))
		tmp6 := NewTermStrz()
		err = tmp6.Read(_io__raw_DifWithHack, this, nil)
		if err != nil {
			return err
		}
		this.DifWithHack = tmp6
	}
	return err
}
func (this *TypeTernaryOpaque) Dif() (v *TermStrz, err error) {
	if (this._f_dif) {
		return this.dif, nil
	}
	var tmp7 *TermStrz;
	tmp8, err := this.IsHack()
	if err != nil {
		return nil, err
	}
	if (!(tmp8)) {
		tmp7 = this.DifWoHack
	} else {
		tmp7 = this.DifWithHack
	}
	this.dif = tmp7
	this._f_dif = true
	return this.dif, nil
}
func (this *TypeTernaryOpaque) IsHack() (v bool, err error) {
	if (this._f_isHack) {
		return this.isHack, nil
	}
	this.isHack = bool(false)
	this._f_isHack = true
	return this.isHack, nil
}
