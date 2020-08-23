// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"strconv"
	"unicode/utf8"
)

type ExprStrOps struct {
	One string
	_io *kaitai.Stream
	_root *ExprStrOps
	_parent interface{}
	_f_oneSubstr3To3 bool
	oneSubstr3To3 string
	_f_toIR8 bool
	toIR8 int
	_f_toIR16 bool
	toIR16 int
	_f_twoSubstr0To10 bool
	twoSubstr0To10 string
	_f_oneLen bool
	oneLen int
	_f_twoLen bool
	twoLen int
	_f_oneSubstr2To5 bool
	oneSubstr2To5 string
	_f_toIR2 bool
	toIR2 int
	_f_twoRev bool
	twoRev string
	_f_two bool
	two string
	_f_twoSubstr4To10 bool
	twoSubstr4To10 string
	_f_toIR10 bool
	toIR10 int
	_f_twoSubstr0To7 bool
	twoSubstr0To7 string
	_f_toIAttr bool
	toIAttr int
	_f_oneSubstr0To3 bool
	oneSubstr0To3 string
	_f_oneRev bool
	oneRev string
}
func NewExprStrOps() *ExprStrOps {
	return &ExprStrOps{
	}
}

func (this *ExprStrOps) Read(io *kaitai.Stream, parent interface{}, root *ExprStrOps) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadBytes(int(5))
	if err != nil {
		return err
	}
	tmp1 = tmp1
	this.One = string(tmp1)
	return err
}
func (this *ExprStrOps) OneSubstr3To3() (v string, err error) {
	if (this._f_oneSubstr3To3) {
		return this.oneSubstr3To3, nil
	}
	this.oneSubstr3To3 = string(this.One[3:3])
	this._f_oneSubstr3To3 = true
	return this.oneSubstr3To3, nil
}
func (this *ExprStrOps) ToIR8() (v int, err error) {
	if (this._f_toIR8) {
		return this.toIR8, nil
	}
	tmp2, err := strconv.ParseInt("721", 8, 0)
	if err != nil {
		return 0, err
	}
	this.toIR8 = int(tmp2)
	this._f_toIR8 = true
	return this.toIR8, nil
}
func (this *ExprStrOps) ToIR16() (v int, err error) {
	if (this._f_toIR16) {
		return this.toIR16, nil
	}
	tmp3, err := strconv.ParseInt("47cf", 16, 0)
	if err != nil {
		return 0, err
	}
	this.toIR16 = int(tmp3)
	this._f_toIR16 = true
	return this.toIR16, nil
}
func (this *ExprStrOps) TwoSubstr0To10() (v string, err error) {
	if (this._f_twoSubstr0To10) {
		return this.twoSubstr0To10, nil
	}
	tmp4, err := this.Two()
	if err != nil {
		return "", err
	}
	this.twoSubstr0To10 = string(tmp4[0:10])
	this._f_twoSubstr0To10 = true
	return this.twoSubstr0To10, nil
}
func (this *ExprStrOps) OneLen() (v int, err error) {
	if (this._f_oneLen) {
		return this.oneLen, nil
	}
	this.oneLen = int(utf8.RuneCountInString(this.One))
	this._f_oneLen = true
	return this.oneLen, nil
}
func (this *ExprStrOps) TwoLen() (v int, err error) {
	if (this._f_twoLen) {
		return this.twoLen, nil
	}
	tmp5, err := this.Two()
	if err != nil {
		return 0, err
	}
	this.twoLen = int(utf8.RuneCountInString(tmp5))
	this._f_twoLen = true
	return this.twoLen, nil
}
func (this *ExprStrOps) OneSubstr2To5() (v string, err error) {
	if (this._f_oneSubstr2To5) {
		return this.oneSubstr2To5, nil
	}
	this.oneSubstr2To5 = string(this.One[2:5])
	this._f_oneSubstr2To5 = true
	return this.oneSubstr2To5, nil
}
func (this *ExprStrOps) ToIR2() (v int, err error) {
	if (this._f_toIR2) {
		return this.toIR2, nil
	}
	tmp6, err := strconv.ParseInt("1010110", 2, 0)
	if err != nil {
		return 0, err
	}
	this.toIR2 = int(tmp6)
	this._f_toIR2 = true
	return this.toIR2, nil
}
func (this *ExprStrOps) TwoRev() (v string, err error) {
	if (this._f_twoRev) {
		return this.twoRev, nil
	}
	tmp7, err := this.Two()
	if err != nil {
		return "", err
	}
	this.twoRev = string(kaitai.StringReverse(tmp7))
	this._f_twoRev = true
	return this.twoRev, nil
}
func (this *ExprStrOps) Two() (v string, err error) {
	if (this._f_two) {
		return this.two, nil
	}
	this.two = string("0123456789")
	this._f_two = true
	return this.two, nil
}
func (this *ExprStrOps) TwoSubstr4To10() (v string, err error) {
	if (this._f_twoSubstr4To10) {
		return this.twoSubstr4To10, nil
	}
	tmp8, err := this.Two()
	if err != nil {
		return "", err
	}
	this.twoSubstr4To10 = string(tmp8[4:10])
	this._f_twoSubstr4To10 = true
	return this.twoSubstr4To10, nil
}
func (this *ExprStrOps) ToIR10() (v int, err error) {
	if (this._f_toIR10) {
		return this.toIR10, nil
	}
	tmp9, err := strconv.ParseInt("-072", 10, 0)
	if err != nil {
		return 0, err
	}
	this.toIR10 = int(tmp9)
	this._f_toIR10 = true
	return this.toIR10, nil
}
func (this *ExprStrOps) TwoSubstr0To7() (v string, err error) {
	if (this._f_twoSubstr0To7) {
		return this.twoSubstr0To7, nil
	}
	tmp10, err := this.Two()
	if err != nil {
		return "", err
	}
	this.twoSubstr0To7 = string(tmp10[0:7])
	this._f_twoSubstr0To7 = true
	return this.twoSubstr0To7, nil
}
func (this *ExprStrOps) ToIAttr() (v int, err error) {
	if (this._f_toIAttr) {
		return this.toIAttr, nil
	}
	tmp11, err := strconv.ParseInt("9173", 10, 0)
	if err != nil {
		return 0, err
	}
	this.toIAttr = int(tmp11)
	this._f_toIAttr = true
	return this.toIAttr, nil
}
func (this *ExprStrOps) OneSubstr0To3() (v string, err error) {
	if (this._f_oneSubstr0To3) {
		return this.oneSubstr0To3, nil
	}
	this.oneSubstr0To3 = string(this.One[0:3])
	this._f_oneSubstr0To3 = true
	return this.oneSubstr0To3, nil
}
func (this *ExprStrOps) OneRev() (v string, err error) {
	if (this._f_oneRev) {
		return this.oneRev, nil
	}
	this.oneRev = string(kaitai.StringReverse(this.One))
	this._f_oneRev = true
	return this.oneRev, nil
}
