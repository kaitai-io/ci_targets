// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"io"
)

type IntegersDoubleOverflow struct {
	SignedSafeMinBe int64
	SignedSafeMinLe int64
	SignedSafeMaxBe int64
	SignedSafeMaxLe int64
	SignedUnsafeNegBe int64
	SignedUnsafeNegLe int64
	SignedUnsafePosBe int64
	SignedUnsafePosLe int64
	_io *kaitai.Stream
	_root *IntegersDoubleOverflow
	_parent interface{}
	_f_unsignedSafeMaxBe bool
	unsignedSafeMaxBe uint64
	_f_unsignedSafeMaxLe bool
	unsignedSafeMaxLe uint64
	_f_unsignedUnsafePosBe bool
	unsignedUnsafePosBe uint64
	_f_unsignedUnsafePosLe bool
	unsignedUnsafePosLe uint64
}
func NewIntegersDoubleOverflow() *IntegersDoubleOverflow {
	return &IntegersDoubleOverflow{
	}
}

func (this *IntegersDoubleOverflow) Read(io *kaitai.Stream, parent interface{}, root *IntegersDoubleOverflow) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadS8be()
	if err != nil {
		return err
	}
	this.SignedSafeMinBe = int64(tmp1)
	tmp2, err := this._io.ReadS8le()
	if err != nil {
		return err
	}
	this.SignedSafeMinLe = int64(tmp2)
	tmp3, err := this._io.ReadS8be()
	if err != nil {
		return err
	}
	this.SignedSafeMaxBe = int64(tmp3)
	tmp4, err := this._io.ReadS8le()
	if err != nil {
		return err
	}
	this.SignedSafeMaxLe = int64(tmp4)
	tmp5, err := this._io.ReadS8be()
	if err != nil {
		return err
	}
	this.SignedUnsafeNegBe = int64(tmp5)
	tmp6, err := this._io.ReadS8le()
	if err != nil {
		return err
	}
	this.SignedUnsafeNegLe = int64(tmp6)
	tmp7, err := this._io.ReadS8be()
	if err != nil {
		return err
	}
	this.SignedUnsafePosBe = int64(tmp7)
	tmp8, err := this._io.ReadS8le()
	if err != nil {
		return err
	}
	this.SignedUnsafePosLe = int64(tmp8)
	return err
}
func (this *IntegersDoubleOverflow) UnsignedSafeMaxBe() (v uint64, err error) {
	if (this._f_unsignedSafeMaxBe) {
		return this.unsignedSafeMaxBe, nil
	}
	_pos, err := this._io.Pos()
	if err != nil {
		return 0, err
	}
	_, err = this._io.Seek(int64(16), io.SeekStart)
	if err != nil {
		return 0, err
	}
	tmp9, err := this._io.ReadU8be()
	if err != nil {
		return 0, err
	}
	this.unsignedSafeMaxBe = tmp9
	_, err = this._io.Seek(_pos, io.SeekStart)
	if err != nil {
		return 0, err
	}
	this._f_unsignedSafeMaxBe = true
	this._f_unsignedSafeMaxBe = true
	return this.unsignedSafeMaxBe, nil
}
func (this *IntegersDoubleOverflow) UnsignedSafeMaxLe() (v uint64, err error) {
	if (this._f_unsignedSafeMaxLe) {
		return this.unsignedSafeMaxLe, nil
	}
	_pos, err := this._io.Pos()
	if err != nil {
		return 0, err
	}
	_, err = this._io.Seek(int64(24), io.SeekStart)
	if err != nil {
		return 0, err
	}
	tmp10, err := this._io.ReadU8le()
	if err != nil {
		return 0, err
	}
	this.unsignedSafeMaxLe = tmp10
	_, err = this._io.Seek(_pos, io.SeekStart)
	if err != nil {
		return 0, err
	}
	this._f_unsignedSafeMaxLe = true
	this._f_unsignedSafeMaxLe = true
	return this.unsignedSafeMaxLe, nil
}
func (this *IntegersDoubleOverflow) UnsignedUnsafePosBe() (v uint64, err error) {
	if (this._f_unsignedUnsafePosBe) {
		return this.unsignedUnsafePosBe, nil
	}
	_pos, err := this._io.Pos()
	if err != nil {
		return 0, err
	}
	_, err = this._io.Seek(int64(48), io.SeekStart)
	if err != nil {
		return 0, err
	}
	tmp11, err := this._io.ReadU8be()
	if err != nil {
		return 0, err
	}
	this.unsignedUnsafePosBe = tmp11
	_, err = this._io.Seek(_pos, io.SeekStart)
	if err != nil {
		return 0, err
	}
	this._f_unsignedUnsafePosBe = true
	this._f_unsignedUnsafePosBe = true
	return this.unsignedUnsafePosBe, nil
}
func (this *IntegersDoubleOverflow) UnsignedUnsafePosLe() (v uint64, err error) {
	if (this._f_unsignedUnsafePosLe) {
		return this.unsignedUnsafePosLe, nil
	}
	_pos, err := this._io.Pos()
	if err != nil {
		return 0, err
	}
	_, err = this._io.Seek(int64(56), io.SeekStart)
	if err != nil {
		return 0, err
	}
	tmp12, err := this._io.ReadU8le()
	if err != nil {
		return 0, err
	}
	this.unsignedUnsafePosLe = tmp12
	_, err = this._io.Seek(_pos, io.SeekStart)
	if err != nil {
		return 0, err
	}
	this._f_unsignedUnsafePosLe = true
	this._f_unsignedUnsafePosLe = true
	return this.unsignedUnsafePosLe, nil
}
