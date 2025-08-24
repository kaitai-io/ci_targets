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

/**
 * A variable-length unsigned/signed integer using base128 encoding. 1-byte groups
 * consist of 1-bit flag of continuation and 7-bit value chunk, and are ordered
 * "least significant group first", i.e. in "little-endian" manner.
 * 
 * This particular encoding is specified and used in:
 * 
 * * DWARF debug file format, where it's dubbed "unsigned LEB128" or "ULEB128".
 *   <https://dwarfstd.org/doc/dwarf-2.0.0.pdf> - page 139
 * * Google Protocol Buffers, where it's called "Base 128 Varints".
 *   <https://protobuf.dev/programming-guides/encoding/#varints>
 * * Apache Lucene, where it's called "VInt"
 *   <https://lucene.apache.org/core/3_5_0/fileformats.html#VInt>
 * * Apache Avro uses this as a basis for integer encoding, adding ZigZag on
 *   top of it for signed ints
 *   <https://avro.apache.org/docs/current/spec.html#binary_encode_primitive>
 * 
 * More information on this encoding is available at <https://en.wikipedia.org/wiki/LEB128>
 * 
 * This particular implementation supports serialized values to up 8 bytes long.
 */

#[derive(Default, Debug, Clone)]
pub struct VlqBase128Le {
    pub _root: SharedType<VlqBase128Le>,
    pub _parent: SharedType<VlqBase128Le>,
    pub _self: SharedType<Self>,
    groups: RefCell<Vec<OptRc<VlqBase128Le_Group>>>,
    _io: RefCell<BytesReader>,
    f_len: Cell<bool>,
    len: RefCell<i32>,
    f_sign_bit: Cell<bool>,
    sign_bit: RefCell<u64>,
    f_value: Cell<bool>,
    value: RefCell<u64>,
    f_value_signed: Cell<bool>,
    value_signed: RefCell<i64>,
}
impl KStruct for VlqBase128Le {
    type Root = VlqBase128Le;
    type Parent = VlqBase128Le;

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
        *self_rc.groups.borrow_mut() = Vec::new();
        {
            let mut _i = 0;
            while {
                let t = Self::read_into::<_, VlqBase128Le_Group>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                self_rc.groups.borrow_mut().push(t);
                let _t_groups = self_rc.groups.borrow();
                let _tmpa = _t_groups.last().unwrap();
                _i += 1;
                let x = !(!(*_tmpa.has_next()));
                x
            } {}
        }
        Ok(())
    }
}
impl VlqBase128Le {
    pub fn len(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_len.get() {
            return Ok(self.len.borrow());
        }
        self.f_len.set(true);
        *self.len.borrow_mut() = (self.groups().len()) as i32;
        Ok(self.len.borrow())
    }
    pub fn sign_bit(
        &self
    ) -> KResult<Ref<'_, u64>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_sign_bit.get() {
            return Ok(self.sign_bit.borrow());
        }
        self.f_sign_bit.set(true);
        *self.sign_bit.borrow_mut() = (((((1 as u64) as i32) << (((((7 as i32) * (*self.len()? as i32)) as i32) - (1 as i32)) as i32)) as u64)) as u64;
        Ok(self.sign_bit.borrow())
    }

    /**
     * Resulting unsigned value as normal integer
     */
    pub fn value(
        &self
    ) -> KResult<Ref<'_, u64>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_value.get() {
            return Ok(self.value.borrow());
        }
        self.f_value.set(true);
        *self.value.borrow_mut() = ((((((((((((((((*self.groups()[0 as usize].value() as i32) + (if ((*self.len()? as i32) >= (2 as i32)) { ((*self.groups()[1 as usize].value() as i32) << (7 as i32)) } else { 0 } as i32)) as i32) + (if ((*self.len()? as i32) >= (3 as i32)) { ((*self.groups()[2 as usize].value() as i32) << (14 as i32)) } else { 0 } as i32)) as i32) + (if ((*self.len()? as i32) >= (4 as i32)) { ((*self.groups()[3 as usize].value() as i32) << (21 as i32)) } else { 0 } as i32)) as i32) + (if ((*self.len()? as i32) >= (5 as i32)) { ((*self.groups()[4 as usize].value() as i32) << (28 as i32)) } else { 0 } as i32)) as i32) + (if ((*self.len()? as i32) >= (6 as i32)) { ((*self.groups()[5 as usize].value() as i32) << (35 as i32)) } else { 0 } as i32)) as i32) + (if ((*self.len()? as i32) >= (7 as i32)) { ((*self.groups()[6 as usize].value() as i32) << (42 as i32)) } else { 0 } as i32)) as i32) + (if ((*self.len()? as i32) >= (8 as i32)) { ((*self.groups()[7 as usize].value() as i32) << (49 as i32)) } else { 0 } as i32)) as u64)) as u64;
        Ok(self.value.borrow())
    }

    /**
     * \sa https://graphics.stanford.edu/~seander/bithacks.html#VariableSignExtend Source
     */
    pub fn value_signed(
        &self
    ) -> KResult<Ref<'_, i64>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_value_signed.get() {
            return Ok(self.value_signed.borrow());
        }
        self.f_value_signed.set(true);
        *self.value_signed.borrow_mut() = (((((((*self.value()? as u64) ^ (*self.sign_bit()? as u64)) as i64) as i64) - ((*self.sign_bit()? as i64) as i64)) as i64)) as i64;
        Ok(self.value_signed.borrow())
    }
}
impl VlqBase128Le {
    pub fn groups(&self) -> Ref<'_, Vec<OptRc<VlqBase128Le_Group>>> {
        self.groups.borrow()
    }
}
impl VlqBase128Le {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

/**
 * One byte group, clearly divided into 7-bit "value" chunk and 1-bit "continuation" flag.
 */

#[derive(Default, Debug, Clone)]
pub struct VlqBase128Le_Group {
    pub _root: SharedType<VlqBase128Le>,
    pub _parent: SharedType<VlqBase128Le>,
    pub _self: SharedType<Self>,
    has_next: RefCell<bool>,
    value: RefCell<u64>,
    _io: RefCell<BytesReader>,
}
impl KStruct for VlqBase128Le_Group {
    type Root = VlqBase128Le;
    type Parent = VlqBase128Le;

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
        *self_rc.has_next.borrow_mut() = _io.read_bits_int_be(1)? != 0;
        *self_rc.value.borrow_mut() = _io.read_bits_int_be(7)?;
        Ok(())
    }
}
impl VlqBase128Le_Group {
}

/**
 * If true, then we have more bytes to read
 */
impl VlqBase128Le_Group {
    pub fn has_next(&self) -> Ref<'_, bool> {
        self.has_next.borrow()
    }
}

/**
 * The 7-bit (base128) numeric value chunk of this group
 */
impl VlqBase128Le_Group {
    pub fn value(&self) -> Ref<'_, u64> {
        self.value.borrow()
    }
}
impl VlqBase128Le_Group {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
