// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"bytes"
)

type TypeTernary struct {
	DifWoHack *TypeTernary_Dummy
	DifWithHack *TypeTernary_Dummy
	_io *kaitai.Stream
	_root *TypeTernary
	_parent interface{}
	_raw_DifWoHack []byte
	_raw_DifWithHack []byte
	_raw__raw_DifWithHack []byte
	_f_isHack bool
	isHack bool
	_f_dif bool
	dif *TypeTernary_Dummy
	_f_difValue bool
	difValue uint8
}

func (this *TypeTernary) Read(io *kaitai.Stream, parent interface{}, root *TypeTernary) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this.IsHack()
	if err != nil {
		return err
	}
	if (!(tmp1)) {
		tmp2, err := this._io.ReadBytes(int(1))
		if err != nil {
			return err
		}
		tmp2 = tmp2
		this._raw_DifWoHack = tmp2
		_io__raw_DifWoHack := kaitai.NewStream(bytes.NewReader(this._raw_DifWoHack))
		tmp3 := new(TypeTernary_Dummy)
		err = tmp3.Read(_io__raw_DifWoHack, this, this._root)
		if err != nil {
			return err
		}
		this.DifWoHack = tmp3
	}
	tmp4, err := this._io.ReadBytes(int(1))
	if err != nil {
		return err
	}
	tmp4 = tmp4
	this._raw__raw_DifWithHack = tmp4
	this._raw_DifWithHack = kaitai.ProcessXOR(this._raw__raw_DifWithHack, []byte{3})
	_io__raw_DifWithHack := kaitai.NewStream(bytes.NewReader(this._raw_DifWithHack))
	tmp5 := new(TypeTernary_Dummy)
	err = tmp5.Read(_io__raw_DifWithHack, this, this._root)
	if err != nil {
		return err
	}
	this.DifWithHack = tmp5
	return err
}
func (this *TypeTernary) IsHack() (v bool, err error) {
	if (this._f_isHack) {
		return this.isHack, nil
	}
	this.isHack = bool(true)
	this._f_isHack = true
	return this.isHack, nil
}
func (this *TypeTernary) Dif() (v *TypeTernary_Dummy, err error) {
	if (this._f_dif) {
		return this.dif, nil
	}
	var tmp6 *TypeTernary_Dummy;
	tmp7, err := this.IsHack()
	if err != nil {
		return nil, err
	}
	if (!(tmp7)) {
		tmp6 = this.DifWoHack
	} else {
		tmp6 = this.DifWithHack
	}
	this.dif = tmp6
	this._f_dif = true
	return this.dif, nil
}
func (this *TypeTernary) DifValue() (v uint8, err error) {
	if (this._f_difValue) {
		return this.difValue, nil
	}
	tmp8, err := this.Dif()
	if err != nil {
		return 0, err
	}
	this.difValue = uint8(tmp8.Value)
	this._f_difValue = true
	return this.difValue, nil
}
type TypeTernary_Dummy struct {
	Value uint8
	_io *kaitai.Stream
	_root *TypeTernary
	_parent *TypeTernary
}

func (this *TypeTernary_Dummy) Read(io *kaitai.Stream, parent *TypeTernary, root *TypeTernary) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp9, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Value = tmp9
	return err
}
