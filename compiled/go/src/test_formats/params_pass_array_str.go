// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type ParamsPassArrayStr struct {
	StrArray []string
	PassStrArray *ParamsPassArrayStr_WantsStrs
	PassStrArrayCalc *ParamsPassArrayStr_WantsStrs
	_io *kaitai.Stream
	_root *ParamsPassArrayStr
	_parent interface{}
	_f_strArrayCalc bool
	strArrayCalc []string
}

func (this *ParamsPassArrayStr) Read(io *kaitai.Stream, parent interface{}, root *ParamsPassArrayStr) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	this.StrArray = make([]string, 3)
	for i := range this.StrArray {
		tmp1, err := this._io.ReadBytes(int(2))
		if err != nil {
			return err
		}
		tmp1 = tmp1
		this.StrArray[i] = string(tmp1)
	}
	tmp2 := new(ParamsPassArrayStr_WantsStrs)
	err = tmp2.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.PassStrArray = tmp2
	tmp3 := new(ParamsPassArrayStr_WantsStrs)
	err = tmp3.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.PassStrArrayCalc = tmp3
	return err
}
func (this *ParamsPassArrayStr) StrArrayCalc() (v []string, err error) {
	if (this._f_strArrayCalc) {
		return this.strArrayCalc, nil
	}
	this.strArrayCalc = []string([]string{"aB", "Cd"})
	this._f_strArrayCalc = true
	return this.strArrayCalc, nil
}
type ParamsPassArrayStr_WantsStrs struct {
	_io *kaitai.Stream
	_root *ParamsPassArrayStr
	_parent *ParamsPassArrayStr
}

func (this *ParamsPassArrayStr_WantsStrs) Read(io *kaitai.Stream, parent *ParamsPassArrayStr, root *ParamsPassArrayStr) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	return err
}
