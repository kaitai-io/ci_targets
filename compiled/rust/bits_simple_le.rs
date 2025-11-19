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
pub struct BitsSimpleLe {
    pub _root: SharedType<BitsSimpleLe>,
    pub _parent: SharedType<BitsSimpleLe>,
    pub _self: SharedType<Self>,
    byte_1: RefCell<u64>,
    byte_2: RefCell<u64>,
    bits_a: RefCell<bool>,
    bits_b: RefCell<u64>,
    bits_c: RefCell<u64>,
    large_bits_1: RefCell<u64>,
    spacer: RefCell<u64>,
    large_bits_2: RefCell<u64>,
    normal_s2: RefCell<i16>,
    byte_8_9_10: RefCell<u64>,
    byte_11_to_14: RefCell<u64>,
    byte_15_to_19: RefCell<u64>,
    byte_20_to_27: RefCell<u64>,
    _io: RefCell<BytesReader>,
    f_test_if_b1: Cell<bool>,
    test_if_b1: RefCell<i8>,
}
impl KStruct for BitsSimpleLe {
    type Root = BitsSimpleLe;
    type Parent = BitsSimpleLe;

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
        *self_rc.byte_1.borrow_mut() = _io.read_bits_int_le(8)?;
        *self_rc.byte_2.borrow_mut() = _io.read_bits_int_le(8)?;
        *self_rc.bits_a.borrow_mut() = _io.read_bits_int_le(1)? != 0;
        *self_rc.bits_b.borrow_mut() = _io.read_bits_int_le(3)?;
        *self_rc.bits_c.borrow_mut() = _io.read_bits_int_le(4)?;
        *self_rc.large_bits_1.borrow_mut() = _io.read_bits_int_le(10)?;
        *self_rc.spacer.borrow_mut() = _io.read_bits_int_le(3)?;
        *self_rc.large_bits_2.borrow_mut() = _io.read_bits_int_le(11)?;
        *self_rc.normal_s2.borrow_mut() = _io.read_s2be()?.into();
        *self_rc.byte_8_9_10.borrow_mut() = _io.read_bits_int_le(24)?;
        *self_rc.byte_11_to_14.borrow_mut() = _io.read_bits_int_le(32)?;
        *self_rc.byte_15_to_19.borrow_mut() = _io.read_bits_int_le(40)?;
        *self_rc.byte_20_to_27.borrow_mut() = _io.read_bits_int_le(64)?;
        Ok(())
    }
}
impl BitsSimpleLe {
    pub fn test_if_b1(
        &self
    ) -> KResult<Ref<'_, i8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_test_if_b1.get() {
            return Ok(self.test_if_b1.borrow());
        }
        self.f_test_if_b1.set(true);
        if ((*self.bits_a() as bool) == (true as bool)) {
            *self.test_if_b1.borrow_mut() = (123) as i8;
        }
        Ok(self.test_if_b1.borrow())
    }
}
impl BitsSimpleLe {
    pub fn byte_1(&self) -> Ref<'_, u64> {
        self.byte_1.borrow()
    }
}
impl BitsSimpleLe {
    pub fn byte_2(&self) -> Ref<'_, u64> {
        self.byte_2.borrow()
    }
}
impl BitsSimpleLe {
    pub fn bits_a(&self) -> Ref<'_, bool> {
        self.bits_a.borrow()
    }
}
impl BitsSimpleLe {
    pub fn bits_b(&self) -> Ref<'_, u64> {
        self.bits_b.borrow()
    }
}
impl BitsSimpleLe {
    pub fn bits_c(&self) -> Ref<'_, u64> {
        self.bits_c.borrow()
    }
}
impl BitsSimpleLe {
    pub fn large_bits_1(&self) -> Ref<'_, u64> {
        self.large_bits_1.borrow()
    }
}
impl BitsSimpleLe {
    pub fn spacer(&self) -> Ref<'_, u64> {
        self.spacer.borrow()
    }
}
impl BitsSimpleLe {
    pub fn large_bits_2(&self) -> Ref<'_, u64> {
        self.large_bits_2.borrow()
    }
}
impl BitsSimpleLe {
    pub fn normal_s2(&self) -> Ref<'_, i16> {
        self.normal_s2.borrow()
    }
}
impl BitsSimpleLe {
    pub fn byte_8_9_10(&self) -> Ref<'_, u64> {
        self.byte_8_9_10.borrow()
    }
}
impl BitsSimpleLe {
    pub fn byte_11_to_14(&self) -> Ref<'_, u64> {
        self.byte_11_to_14.borrow()
    }
}
impl BitsSimpleLe {
    pub fn byte_15_to_19(&self) -> Ref<'_, u64> {
        self.byte_15_to_19.borrow()
    }
}
impl BitsSimpleLe {
    pub fn byte_20_to_27(&self) -> Ref<'_, u64> {
        self.byte_20_to_27.borrow()
    }
}
impl BitsSimpleLe {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
