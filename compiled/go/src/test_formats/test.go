// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type Test struct {
	SeqBlock *Test
	_io *kaitai.Stream
	_root *Test
	_parent interface{}
}

func (this *Test) Read(io *kaitai.Stream, parent interface{}, root *Test) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1 := new(Test)
	err = tmp1.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.SeqBlock = tmp1
	return err
}
type Test_MyType struct {
	World int32
	RepeatedThing []int32
	_io *kaitai.Stream
	_root *Test
	_parent interface{}
}

func (this *Test_MyType) Read(io *kaitai.Stream, parent interface{}, root *Test) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp2, err := this._io.ReadS4be()
	if err != nil {
		return err
	}
	this.World = int32(tmp2)
	this.RepeatedThing = make([]int32, this.RepeatCount)
	for i := range this.RepeatedThing {
		tmp3, err := this._io.ReadS4be()
		if err != nil {
			return err
		}
		this.RepeatedThing[i] = tmp3
	}
	return err
}
