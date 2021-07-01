// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type Imports0 struct {
	Two uint8
	Hw *HelloWorld
	_io *kaitai.Stream
	_root *Imports0
	_parent interface{}
	_f_hwOne bool
	hwOne uint8
}
func NewImports0() *Imports0 {
	return &Imports0{
	}
}

func (this *Imports0) Read(io *kaitai.Stream, parent interface{}, root *Imports0) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Two = tmp1
	tmp2 := NewHelloWorld()
	err = tmp2.Read(this._io, this, nil)
	if err != nil {
		return err
	}
	this.Hw = tmp2
	return err
}
func (this *Imports0) HwOne() (v uint8, err error) {
	if (this._f_hwOne) {
		return this.hwOne, nil
	}
	this.hwOne = uint8(this.Hw.One)
	this._f_hwOne = true
	return this.hwOne, nil
}
