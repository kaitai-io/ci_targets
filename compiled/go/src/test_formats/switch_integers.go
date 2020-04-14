// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type SwitchIntegers struct {
	Opcodes []*SwitchIntegers_Opcode
	_io *kaitai.Stream
	_root *SwitchIntegers
	_parent interface{}
}
func NewSwitchIntegers() *SwitchIntegers {
	return &SwitchIntegers{
	}
}

func (this *SwitchIntegers) Read(io *kaitai.Stream, parent interface{}, root *SwitchIntegers) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	for i := 1;; i++ {
		tmp1, err := this._io.EOF()
		if err != nil {
			return err
		}
		if tmp1 {
			break
		}
		tmp2 := NewSwitchIntegers_Opcode()
		err = tmp2.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Opcodes = append(this.Opcodes, tmp2)
	}
	return err
}
type SwitchIntegers_Opcode struct {
	Code uint8
	Body uint64
	_io *kaitai.Stream
	_root *SwitchIntegers
	_parent *SwitchIntegers
}
func NewSwitchIntegers_Opcode() *SwitchIntegers_Opcode {
	return &SwitchIntegers_Opcode{
	}
}

func (this *SwitchIntegers_Opcode) Read(io *kaitai.Stream, parent *SwitchIntegers, root *SwitchIntegers) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp3, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Code = tmp3
	switch (this.Code) {
	case 1:
		tmp4, err := this._io.ReadU1()
		if err != nil {
			return err
		}
		this.Body = uint64(tmp4)
	case 2:
		tmp5, err := this._io.ReadU2le()
		if err != nil {
			return err
		}
		this.Body = uint64(tmp5)
	case 4:
		tmp6, err := this._io.ReadU4le()
		if err != nil {
			return err
		}
		this.Body = uint64(tmp6)
	case 8:
		tmp7, err := this._io.ReadU8le()
		if err != nil {
			return err
		}
		this.Body = uint64(tmp7)
	}
	return err
}
