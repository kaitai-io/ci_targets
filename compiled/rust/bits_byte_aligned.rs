// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#![allow(unused_imports)]
#![allow(non_snake_case)]
#![allow(non_camel_case_types)]
#![allow(irrefutable_let_patterns)]
#![allow(unused_comparisons)]

extern crate kaitai;
use kaitai::*;
use std::convert::{TryFrom, TryInto};
use std::cell::{Ref, Cell, RefCell};
use std::rc::{Rc, Weak};

#[derive(Default, Debug, Clone)]
pub struct BitsByteAligned {
    pub _root: SharedType<BitsByteAligned>,
    pub _parent: SharedType<BitsByteAligned>,
    pub _self: SharedType<Self>,
    one: RefCell<u64>,
    byte_1: RefCell<u8>,
    two: RefCell<u64>,
    three: RefCell<bool>,
    byte_2: RefCell<u8>,
    four: RefCell<u64>,
    byte_3: RefCell<Vec<u8>>,
    full_byte: RefCell<u64>,
    byte_4: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for BitsByteAligned {
    type Root = BitsByteAligned;
    type Parent = BitsByteAligned;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.one.borrow_mut() = _io.read_bits_int_be(6)?;
        _io.align_to_byte()?;
        *self_rc.byte_1.borrow_mut() = _io.read_u1()?.into();
        *self_rc.two.borrow_mut() = _io.read_bits_int_be(3)?;
        *self_rc.three.borrow_mut() = _io.read_bits_int_be(1)? != 0;
        _io.align_to_byte()?;
        *self_rc.byte_2.borrow_mut() = _io.read_u1()?.into();
        *self_rc.four.borrow_mut() = _io.read_bits_int_be(14)?;
        _io.align_to_byte()?;
        *self_rc.byte_3.borrow_mut() = _io.read_bytes(1 as usize)?.into();
        *self_rc.full_byte.borrow_mut() = _io.read_bits_int_be(8)?;
        _io.align_to_byte()?;
        *self_rc.byte_4.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl BitsByteAligned {
}
impl BitsByteAligned {
    pub fn one(&self) -> Ref<'_, u64> {
        self.one.borrow()
    }
}
impl BitsByteAligned {
    pub fn byte_1(&self) -> Ref<'_, u8> {
        self.byte_1.borrow()
    }
}
impl BitsByteAligned {
    pub fn two(&self) -> Ref<'_, u64> {
        self.two.borrow()
    }
}
impl BitsByteAligned {
    pub fn three(&self) -> Ref<'_, bool> {
        self.three.borrow()
    }
}
impl BitsByteAligned {
    pub fn byte_2(&self) -> Ref<'_, u8> {
        self.byte_2.borrow()
    }
}
impl BitsByteAligned {
    pub fn four(&self) -> Ref<'_, u64> {
        self.four.borrow()
    }
}
impl BitsByteAligned {
    pub fn byte_3(&self) -> Ref<'_, Vec<u8>> {
        self.byte_3.borrow()
    }
}
impl BitsByteAligned {
    pub fn full_byte(&self) -> Ref<'_, u64> {
        self.full_byte.borrow()
    }
}
impl BitsByteAligned {
    pub fn byte_4(&self) -> Ref<'_, u8> {
        self.byte_4.borrow()
    }
}
impl BitsByteAligned {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
