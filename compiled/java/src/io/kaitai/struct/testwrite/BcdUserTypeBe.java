// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;

public class BcdUserTypeBe extends KaitaiStruct.ReadWrite {
    public static BcdUserTypeBe fromFile(String fileName) throws IOException {
        return new BcdUserTypeBe(new ByteBufferKaitaiStream(fileName));
    }
    public BcdUserTypeBe() {
        this(null, null, null);
    }

    public BcdUserTypeBe(KaitaiStream _io) {
        this(_io, null, null);
    }

    public BcdUserTypeBe(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public BcdUserTypeBe(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, BcdUserTypeBe _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this._raw_ltr = this._io.readBytes(4);
        KaitaiStream _io__raw_ltr = new ByteBufferKaitaiStream(this._raw_ltr);
        this.ltr = new LtrObj(_io__raw_ltr, this, _root);
        this.ltr._read();
        this._raw_rtl = this._io.readBytes(4);
        KaitaiStream _io__raw_rtl = new ByteBufferKaitaiStream(this._raw_rtl);
        this.rtl = new RtlObj(_io__raw_rtl, this, _root);
        this.rtl._read();
        this._raw_leadingZeroLtr = this._io.readBytes(4);
        KaitaiStream _io__raw_leadingZeroLtr = new ByteBufferKaitaiStream(this._raw_leadingZeroLtr);
        this.leadingZeroLtr = new LeadingZeroLtrObj(_io__raw_leadingZeroLtr, this, _root);
        this.leadingZeroLtr._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        this.ltr._fetchInstances();
        this.rtl._fetchInstances();
        this.leadingZeroLtr._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        final KaitaiStream _io__raw_ltr = new ByteBufferKaitaiStream(4);
        this._io.addChildStream(_io__raw_ltr);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (4));
            final BcdUserTypeBe _this = this;
            _io__raw_ltr.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_ltr = _io__raw_ltr.toByteArray();
                    if (_this._raw_ltr.length != 4)
                        throw new ConsistencyError("raw(ltr)", 4, _this._raw_ltr.length);
                    parent.writeBytes(_this._raw_ltr);
                }
            });
        }
        this.ltr._write_Seq(_io__raw_ltr);
        final KaitaiStream _io__raw_rtl = new ByteBufferKaitaiStream(4);
        this._io.addChildStream(_io__raw_rtl);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (4));
            final BcdUserTypeBe _this = this;
            _io__raw_rtl.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_rtl = _io__raw_rtl.toByteArray();
                    if (_this._raw_rtl.length != 4)
                        throw new ConsistencyError("raw(rtl)", 4, _this._raw_rtl.length);
                    parent.writeBytes(_this._raw_rtl);
                }
            });
        }
        this.rtl._write_Seq(_io__raw_rtl);
        final KaitaiStream _io__raw_leadingZeroLtr = new ByteBufferKaitaiStream(4);
        this._io.addChildStream(_io__raw_leadingZeroLtr);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (4));
            final BcdUserTypeBe _this = this;
            _io__raw_leadingZeroLtr.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_leadingZeroLtr = _io__raw_leadingZeroLtr.toByteArray();
                    if (_this._raw_leadingZeroLtr.length != 4)
                        throw new ConsistencyError("raw(leading_zero_ltr)", 4, _this._raw_leadingZeroLtr.length);
                    parent.writeBytes(_this._raw_leadingZeroLtr);
                }
            });
        }
        this.leadingZeroLtr._write_Seq(_io__raw_leadingZeroLtr);
    }

    public void _check() {
        if (!Objects.equals(this.ltr._root(), _root()))
            throw new ConsistencyError("ltr", _root(), this.ltr._root());
        if (!Objects.equals(this.ltr._parent(), this))
            throw new ConsistencyError("ltr", this, this.ltr._parent());
        if (!Objects.equals(this.rtl._root(), _root()))
            throw new ConsistencyError("rtl", _root(), this.rtl._root());
        if (!Objects.equals(this.rtl._parent(), this))
            throw new ConsistencyError("rtl", this, this.rtl._parent());
        if (!Objects.equals(this.leadingZeroLtr._root(), _root()))
            throw new ConsistencyError("leading_zero_ltr", _root(), this.leadingZeroLtr._root());
        if (!Objects.equals(this.leadingZeroLtr._parent(), this))
            throw new ConsistencyError("leading_zero_ltr", this, this.leadingZeroLtr._parent());
        _dirty = false;
    }
    public static class LeadingZeroLtrObj extends KaitaiStruct.ReadWrite {
        public static LeadingZeroLtrObj fromFile(String fileName) throws IOException {
            return new LeadingZeroLtrObj(new ByteBufferKaitaiStream(fileName));
        }
        public LeadingZeroLtrObj() {
            this(null, null, null);
        }

        public LeadingZeroLtrObj(KaitaiStream _io) {
            this(_io, null, null);
        }

        public LeadingZeroLtrObj(KaitaiStream _io, BcdUserTypeBe _parent) {
            this(_io, _parent, null);
        }

        public LeadingZeroLtrObj(KaitaiStream _io, BcdUserTypeBe _parent, BcdUserTypeBe _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.b1 = this._io.readU1();
            this.b2 = this._io.readU1();
            this.b3 = this._io.readU1();
            this.b4 = this._io.readU1();
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU1(this.b1);
            this._io.writeU1(this.b2);
            this._io.writeU1(this.b3);
            this._io.writeU1(this.b4);
        }

        public void _check() {
            _dirty = false;
        }
        public Integer asInt() {
            if (this.asInt != null)
                return this.asInt;
            this.asInt = ((Number) (((((((digit8() * 1 + digit7() * 10) + digit6() * 100) + digit5() * 1000) + digit4() * 10000) + digit3() * 100000) + digit2() * 1000000) + digit1() * 10000000)).intValue();
            return this.asInt;
        }
        public void _invalidateAsInt() { this.asInt = null; }
        public String asStr() {
            if (this.asStr != null)
                return this.asStr;
            this.asStr = ((((((Long.toString(digit1()) + Long.toString(digit2())) + Long.toString(digit3())) + Long.toString(digit4())) + Long.toString(digit5())) + Long.toString(digit6())) + Long.toString(digit7())) + Long.toString(digit8());
            return this.asStr;
        }
        public void _invalidateAsStr() { this.asStr = null; }
        public Integer digit1() {
            if (this.digit1 != null)
                return this.digit1;
            this.digit1 = ((Number) ((b1() & 240) >> 4)).intValue();
            return this.digit1;
        }
        public void _invalidateDigit1() { this.digit1 = null; }
        public Integer digit2() {
            if (this.digit2 != null)
                return this.digit2;
            this.digit2 = ((Number) (b1() & 15)).intValue();
            return this.digit2;
        }
        public void _invalidateDigit2() { this.digit2 = null; }
        public Integer digit3() {
            if (this.digit3 != null)
                return this.digit3;
            this.digit3 = ((Number) ((b2() & 240) >> 4)).intValue();
            return this.digit3;
        }
        public void _invalidateDigit3() { this.digit3 = null; }
        public Integer digit4() {
            if (this.digit4 != null)
                return this.digit4;
            this.digit4 = ((Number) (b2() & 15)).intValue();
            return this.digit4;
        }
        public void _invalidateDigit4() { this.digit4 = null; }
        public Integer digit5() {
            if (this.digit5 != null)
                return this.digit5;
            this.digit5 = ((Number) ((b3() & 240) >> 4)).intValue();
            return this.digit5;
        }
        public void _invalidateDigit5() { this.digit5 = null; }
        public Integer digit6() {
            if (this.digit6 != null)
                return this.digit6;
            this.digit6 = ((Number) (b3() & 15)).intValue();
            return this.digit6;
        }
        public void _invalidateDigit6() { this.digit6 = null; }
        public Integer digit7() {
            if (this.digit7 != null)
                return this.digit7;
            this.digit7 = ((Number) ((b4() & 240) >> 4)).intValue();
            return this.digit7;
        }
        public void _invalidateDigit7() { this.digit7 = null; }
        public Integer digit8() {
            if (this.digit8 != null)
                return this.digit8;
            this.digit8 = ((Number) (b4() & 15)).intValue();
            return this.digit8;
        }
        public void _invalidateDigit8() { this.digit8 = null; }
        public int b1() { return b1; }
        public void setB1(int _v) { _dirty = true; b1 = _v; }
        public int b2() { return b2; }
        public void setB2(int _v) { _dirty = true; b2 = _v; }
        public int b3() { return b3; }
        public void setB3(int _v) { _dirty = true; b3 = _v; }
        public int b4() { return b4; }
        public void setB4(int _v) { _dirty = true; b4 = _v; }
        public BcdUserTypeBe _root() { return _root; }
        public void set_root(BcdUserTypeBe _v) { _dirty = true; _root = _v; }
        public BcdUserTypeBe _parent() { return _parent; }
        public void set_parent(BcdUserTypeBe _v) { _dirty = true; _parent = _v; }
        private Integer asInt;
        private String asStr;
        private Integer digit1;
        private Integer digit2;
        private Integer digit3;
        private Integer digit4;
        private Integer digit5;
        private Integer digit6;
        private Integer digit7;
        private Integer digit8;
        private int b1;
        private int b2;
        private int b3;
        private int b4;
        private BcdUserTypeBe _root;
        private BcdUserTypeBe _parent;
    }
    public static class LtrObj extends KaitaiStruct.ReadWrite {
        public static LtrObj fromFile(String fileName) throws IOException {
            return new LtrObj(new ByteBufferKaitaiStream(fileName));
        }
        public LtrObj() {
            this(null, null, null);
        }

        public LtrObj(KaitaiStream _io) {
            this(_io, null, null);
        }

        public LtrObj(KaitaiStream _io, BcdUserTypeBe _parent) {
            this(_io, _parent, null);
        }

        public LtrObj(KaitaiStream _io, BcdUserTypeBe _parent, BcdUserTypeBe _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.b1 = this._io.readU1();
            this.b2 = this._io.readU1();
            this.b3 = this._io.readU1();
            this.b4 = this._io.readU1();
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU1(this.b1);
            this._io.writeU1(this.b2);
            this._io.writeU1(this.b3);
            this._io.writeU1(this.b4);
        }

        public void _check() {
            _dirty = false;
        }
        public Integer asInt() {
            if (this.asInt != null)
                return this.asInt;
            this.asInt = ((Number) (((((((digit8() * 1 + digit7() * 10) + digit6() * 100) + digit5() * 1000) + digit4() * 10000) + digit3() * 100000) + digit2() * 1000000) + digit1() * 10000000)).intValue();
            return this.asInt;
        }
        public void _invalidateAsInt() { this.asInt = null; }
        public String asStr() {
            if (this.asStr != null)
                return this.asStr;
            this.asStr = ((((((Long.toString(digit1()) + Long.toString(digit2())) + Long.toString(digit3())) + Long.toString(digit4())) + Long.toString(digit5())) + Long.toString(digit6())) + Long.toString(digit7())) + Long.toString(digit8());
            return this.asStr;
        }
        public void _invalidateAsStr() { this.asStr = null; }
        public Integer digit1() {
            if (this.digit1 != null)
                return this.digit1;
            this.digit1 = ((Number) ((b1() & 240) >> 4)).intValue();
            return this.digit1;
        }
        public void _invalidateDigit1() { this.digit1 = null; }
        public Integer digit2() {
            if (this.digit2 != null)
                return this.digit2;
            this.digit2 = ((Number) (b1() & 15)).intValue();
            return this.digit2;
        }
        public void _invalidateDigit2() { this.digit2 = null; }
        public Integer digit3() {
            if (this.digit3 != null)
                return this.digit3;
            this.digit3 = ((Number) ((b2() & 240) >> 4)).intValue();
            return this.digit3;
        }
        public void _invalidateDigit3() { this.digit3 = null; }
        public Integer digit4() {
            if (this.digit4 != null)
                return this.digit4;
            this.digit4 = ((Number) (b2() & 15)).intValue();
            return this.digit4;
        }
        public void _invalidateDigit4() { this.digit4 = null; }
        public Integer digit5() {
            if (this.digit5 != null)
                return this.digit5;
            this.digit5 = ((Number) ((b3() & 240) >> 4)).intValue();
            return this.digit5;
        }
        public void _invalidateDigit5() { this.digit5 = null; }
        public Integer digit6() {
            if (this.digit6 != null)
                return this.digit6;
            this.digit6 = ((Number) (b3() & 15)).intValue();
            return this.digit6;
        }
        public void _invalidateDigit6() { this.digit6 = null; }
        public Integer digit7() {
            if (this.digit7 != null)
                return this.digit7;
            this.digit7 = ((Number) ((b4() & 240) >> 4)).intValue();
            return this.digit7;
        }
        public void _invalidateDigit7() { this.digit7 = null; }
        public Integer digit8() {
            if (this.digit8 != null)
                return this.digit8;
            this.digit8 = ((Number) (b4() & 15)).intValue();
            return this.digit8;
        }
        public void _invalidateDigit8() { this.digit8 = null; }
        public int b1() { return b1; }
        public void setB1(int _v) { _dirty = true; b1 = _v; }
        public int b2() { return b2; }
        public void setB2(int _v) { _dirty = true; b2 = _v; }
        public int b3() { return b3; }
        public void setB3(int _v) { _dirty = true; b3 = _v; }
        public int b4() { return b4; }
        public void setB4(int _v) { _dirty = true; b4 = _v; }
        public BcdUserTypeBe _root() { return _root; }
        public void set_root(BcdUserTypeBe _v) { _dirty = true; _root = _v; }
        public BcdUserTypeBe _parent() { return _parent; }
        public void set_parent(BcdUserTypeBe _v) { _dirty = true; _parent = _v; }
        private Integer asInt;
        private String asStr;
        private Integer digit1;
        private Integer digit2;
        private Integer digit3;
        private Integer digit4;
        private Integer digit5;
        private Integer digit6;
        private Integer digit7;
        private Integer digit8;
        private int b1;
        private int b2;
        private int b3;
        private int b4;
        private BcdUserTypeBe _root;
        private BcdUserTypeBe _parent;
    }
    public static class RtlObj extends KaitaiStruct.ReadWrite {
        public static RtlObj fromFile(String fileName) throws IOException {
            return new RtlObj(new ByteBufferKaitaiStream(fileName));
        }
        public RtlObj() {
            this(null, null, null);
        }

        public RtlObj(KaitaiStream _io) {
            this(_io, null, null);
        }

        public RtlObj(KaitaiStream _io, BcdUserTypeBe _parent) {
            this(_io, _parent, null);
        }

        public RtlObj(KaitaiStream _io, BcdUserTypeBe _parent, BcdUserTypeBe _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.b1 = this._io.readU1();
            this.b2 = this._io.readU1();
            this.b3 = this._io.readU1();
            this.b4 = this._io.readU1();
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU1(this.b1);
            this._io.writeU1(this.b2);
            this._io.writeU1(this.b3);
            this._io.writeU1(this.b4);
        }

        public void _check() {
            _dirty = false;
        }
        public Integer asInt() {
            if (this.asInt != null)
                return this.asInt;
            this.asInt = ((Number) (((((((digit1() * 1 + digit2() * 10) + digit3() * 100) + digit4() * 1000) + digit5() * 10000) + digit6() * 100000) + digit7() * 1000000) + digit8() * 10000000)).intValue();
            return this.asInt;
        }
        public void _invalidateAsInt() { this.asInt = null; }
        public String asStr() {
            if (this.asStr != null)
                return this.asStr;
            this.asStr = ((((((Long.toString(digit8()) + Long.toString(digit7())) + Long.toString(digit6())) + Long.toString(digit5())) + Long.toString(digit4())) + Long.toString(digit3())) + Long.toString(digit2())) + Long.toString(digit1());
            return this.asStr;
        }
        public void _invalidateAsStr() { this.asStr = null; }
        public Integer digit1() {
            if (this.digit1 != null)
                return this.digit1;
            this.digit1 = ((Number) ((b1() & 240) >> 4)).intValue();
            return this.digit1;
        }
        public void _invalidateDigit1() { this.digit1 = null; }
        public Integer digit2() {
            if (this.digit2 != null)
                return this.digit2;
            this.digit2 = ((Number) (b1() & 15)).intValue();
            return this.digit2;
        }
        public void _invalidateDigit2() { this.digit2 = null; }
        public Integer digit3() {
            if (this.digit3 != null)
                return this.digit3;
            this.digit3 = ((Number) ((b2() & 240) >> 4)).intValue();
            return this.digit3;
        }
        public void _invalidateDigit3() { this.digit3 = null; }
        public Integer digit4() {
            if (this.digit4 != null)
                return this.digit4;
            this.digit4 = ((Number) (b2() & 15)).intValue();
            return this.digit4;
        }
        public void _invalidateDigit4() { this.digit4 = null; }
        public Integer digit5() {
            if (this.digit5 != null)
                return this.digit5;
            this.digit5 = ((Number) ((b3() & 240) >> 4)).intValue();
            return this.digit5;
        }
        public void _invalidateDigit5() { this.digit5 = null; }
        public Integer digit6() {
            if (this.digit6 != null)
                return this.digit6;
            this.digit6 = ((Number) (b3() & 15)).intValue();
            return this.digit6;
        }
        public void _invalidateDigit6() { this.digit6 = null; }
        public Integer digit7() {
            if (this.digit7 != null)
                return this.digit7;
            this.digit7 = ((Number) ((b4() & 240) >> 4)).intValue();
            return this.digit7;
        }
        public void _invalidateDigit7() { this.digit7 = null; }
        public Integer digit8() {
            if (this.digit8 != null)
                return this.digit8;
            this.digit8 = ((Number) (b4() & 15)).intValue();
            return this.digit8;
        }
        public void _invalidateDigit8() { this.digit8 = null; }
        public int b1() { return b1; }
        public void setB1(int _v) { _dirty = true; b1 = _v; }
        public int b2() { return b2; }
        public void setB2(int _v) { _dirty = true; b2 = _v; }
        public int b3() { return b3; }
        public void setB3(int _v) { _dirty = true; b3 = _v; }
        public int b4() { return b4; }
        public void setB4(int _v) { _dirty = true; b4 = _v; }
        public BcdUserTypeBe _root() { return _root; }
        public void set_root(BcdUserTypeBe _v) { _dirty = true; _root = _v; }
        public BcdUserTypeBe _parent() { return _parent; }
        public void set_parent(BcdUserTypeBe _v) { _dirty = true; _parent = _v; }
        private Integer asInt;
        private String asStr;
        private Integer digit1;
        private Integer digit2;
        private Integer digit3;
        private Integer digit4;
        private Integer digit5;
        private Integer digit6;
        private Integer digit7;
        private Integer digit8;
        private int b1;
        private int b2;
        private int b3;
        private int b4;
        private BcdUserTypeBe _root;
        private BcdUserTypeBe _parent;
    }
    public LtrObj ltr() { return ltr; }
    public void setLtr(LtrObj _v) { _dirty = true; ltr = _v; }
    public RtlObj rtl() { return rtl; }
    public void setRtl(RtlObj _v) { _dirty = true; rtl = _v; }
    public LeadingZeroLtrObj leadingZeroLtr() { return leadingZeroLtr; }
    public void setLeadingZeroLtr(LeadingZeroLtrObj _v) { _dirty = true; leadingZeroLtr = _v; }
    public BcdUserTypeBe _root() { return _root; }
    public void set_root(BcdUserTypeBe _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    public byte[] _raw_ltr() { return _raw_ltr; }
    public void set_raw_Ltr(byte[] _v) { _dirty = true; _raw_ltr = _v; }
    public byte[] _raw_rtl() { return _raw_rtl; }
    public void set_raw_Rtl(byte[] _v) { _dirty = true; _raw_rtl = _v; }
    public byte[] _raw_leadingZeroLtr() { return _raw_leadingZeroLtr; }
    public void set_raw_LeadingZeroLtr(byte[] _v) { _dirty = true; _raw_leadingZeroLtr = _v; }
    private LtrObj ltr;
    private RtlObj rtl;
    private LeadingZeroLtrObj leadingZeroLtr;
    private BcdUserTypeBe _root;
    private KaitaiStruct.ReadWrite _parent;
    private byte[] _raw_ltr;
    private byte[] _raw_rtl;
    private byte[] _raw_leadingZeroLtr;
}
