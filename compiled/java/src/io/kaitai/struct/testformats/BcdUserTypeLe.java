// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class BcdUserTypeLe extends KaitaiStruct {
    public static BcdUserTypeLe fromFile(String fileName) throws IOException {
        return new BcdUserTypeLe(new ByteBufferKaitaiStream(fileName));
    }

    public BcdUserTypeLe(KaitaiStream _io) {
        this(_io, null, null);
    }

    public BcdUserTypeLe(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public BcdUserTypeLe(KaitaiStream _io, KaitaiStruct _parent, BcdUserTypeLe _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this._raw_ltr = this._io.readBytes(4);
        KaitaiStream _io__raw_ltr = new ByteBufferKaitaiStream(_raw_ltr);
        this.ltr = new LtrObj(_io__raw_ltr, this, _root);
        this._raw_rtl = this._io.readBytes(4);
        KaitaiStream _io__raw_rtl = new ByteBufferKaitaiStream(_raw_rtl);
        this.rtl = new RtlObj(_io__raw_rtl, this, _root);
        this._raw_leadingZeroLtr = this._io.readBytes(4);
        KaitaiStream _io__raw_leadingZeroLtr = new ByteBufferKaitaiStream(_raw_leadingZeroLtr);
        this.leadingZeroLtr = new LeadingZeroLtrObj(_io__raw_leadingZeroLtr, this, _root);
    }
    public static class LtrObj extends KaitaiStruct {
        public static LtrObj fromFile(String fileName) throws IOException {
            return new LtrObj(new ByteBufferKaitaiStream(fileName));
        }

        public LtrObj(KaitaiStream _io) {
            this(_io, null, null);
        }

        public LtrObj(KaitaiStream _io, BcdUserTypeLe _parent) {
            this(_io, _parent, null);
        }

        public LtrObj(KaitaiStream _io, BcdUserTypeLe _parent, BcdUserTypeLe _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.b1 = this._io.readU1();
            this.b2 = this._io.readU1();
            this.b3 = this._io.readU1();
            this.b4 = this._io.readU1();
        }
        private Integer asInt;
        public Integer asInt() {
            if (this.asInt != null)
                return this.asInt;
            int _tmp = (int) (((((((((digit8() * 1) + (digit7() * 10)) + (digit6() * 100)) + (digit5() * 1000)) + (digit4() * 10000)) + (digit3() * 100000)) + (digit2() * 1000000)) + (digit1() * 10000000)));
            this.asInt = _tmp;
            return this.asInt;
        }
        private Integer digit2;
        public Integer digit2() {
            if (this.digit2 != null)
                return this.digit2;
            int _tmp = (int) ((b4() & 15));
            this.digit2 = _tmp;
            return this.digit2;
        }
        private Integer digit4;
        public Integer digit4() {
            if (this.digit4 != null)
                return this.digit4;
            int _tmp = (int) ((b3() & 15));
            this.digit4 = _tmp;
            return this.digit4;
        }
        private Integer digit3;
        public Integer digit3() {
            if (this.digit3 != null)
                return this.digit3;
            int _tmp = (int) (((b3() & 240) >> 4));
            this.digit3 = _tmp;
            return this.digit3;
        }
        private Integer digit5;
        public Integer digit5() {
            if (this.digit5 != null)
                return this.digit5;
            int _tmp = (int) (((b2() & 240) >> 4));
            this.digit5 = _tmp;
            return this.digit5;
        }
        private Integer digit8;
        public Integer digit8() {
            if (this.digit8 != null)
                return this.digit8;
            int _tmp = (int) ((b1() & 15));
            this.digit8 = _tmp;
            return this.digit8;
        }
        private Integer digit6;
        public Integer digit6() {
            if (this.digit6 != null)
                return this.digit6;
            int _tmp = (int) ((b2() & 15));
            this.digit6 = _tmp;
            return this.digit6;
        }
        private String asStr;
        public String asStr() {
            if (this.asStr != null)
                return this.asStr;
            this.asStr = Long.toString(digit1(), 10) + Long.toString(digit2(), 10) + Long.toString(digit3(), 10) + Long.toString(digit4(), 10) + Long.toString(digit5(), 10) + Long.toString(digit6(), 10) + Long.toString(digit7(), 10) + Long.toString(digit8(), 10);
            return this.asStr;
        }
        private Integer digit1;
        public Integer digit1() {
            if (this.digit1 != null)
                return this.digit1;
            int _tmp = (int) (((b4() & 240) >> 4));
            this.digit1 = _tmp;
            return this.digit1;
        }
        private Integer digit7;
        public Integer digit7() {
            if (this.digit7 != null)
                return this.digit7;
            int _tmp = (int) (((b1() & 240) >> 4));
            this.digit7 = _tmp;
            return this.digit7;
        }
        private int b1;
        private int b2;
        private int b3;
        private int b4;
        private BcdUserTypeLe _root;
        private BcdUserTypeLe _parent;
        public int b1() { return b1; }
        public int b2() { return b2; }
        public int b3() { return b3; }
        public int b4() { return b4; }
        public BcdUserTypeLe _root() { return _root; }
        public BcdUserTypeLe _parent() { return _parent; }
    }
    public static class RtlObj extends KaitaiStruct {
        public static RtlObj fromFile(String fileName) throws IOException {
            return new RtlObj(new ByteBufferKaitaiStream(fileName));
        }

        public RtlObj(KaitaiStream _io) {
            this(_io, null, null);
        }

        public RtlObj(KaitaiStream _io, BcdUserTypeLe _parent) {
            this(_io, _parent, null);
        }

        public RtlObj(KaitaiStream _io, BcdUserTypeLe _parent, BcdUserTypeLe _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.b1 = this._io.readU1();
            this.b2 = this._io.readU1();
            this.b3 = this._io.readU1();
            this.b4 = this._io.readU1();
        }
        private Integer asInt;
        public Integer asInt() {
            if (this.asInt != null)
                return this.asInt;
            int _tmp = (int) (((((((((digit1() * 1) + (digit2() * 10)) + (digit3() * 100)) + (digit4() * 1000)) + (digit5() * 10000)) + (digit6() * 100000)) + (digit7() * 1000000)) + (digit8() * 10000000)));
            this.asInt = _tmp;
            return this.asInt;
        }
        private Integer digit2;
        public Integer digit2() {
            if (this.digit2 != null)
                return this.digit2;
            int _tmp = (int) ((b4() & 15));
            this.digit2 = _tmp;
            return this.digit2;
        }
        private Integer digit4;
        public Integer digit4() {
            if (this.digit4 != null)
                return this.digit4;
            int _tmp = (int) ((b3() & 15));
            this.digit4 = _tmp;
            return this.digit4;
        }
        private Integer digit3;
        public Integer digit3() {
            if (this.digit3 != null)
                return this.digit3;
            int _tmp = (int) (((b3() & 240) >> 4));
            this.digit3 = _tmp;
            return this.digit3;
        }
        private Integer digit5;
        public Integer digit5() {
            if (this.digit5 != null)
                return this.digit5;
            int _tmp = (int) (((b2() & 240) >> 4));
            this.digit5 = _tmp;
            return this.digit5;
        }
        private Integer digit8;
        public Integer digit8() {
            if (this.digit8 != null)
                return this.digit8;
            int _tmp = (int) ((b1() & 15));
            this.digit8 = _tmp;
            return this.digit8;
        }
        private Integer digit6;
        public Integer digit6() {
            if (this.digit6 != null)
                return this.digit6;
            int _tmp = (int) ((b2() & 15));
            this.digit6 = _tmp;
            return this.digit6;
        }
        private String asStr;
        public String asStr() {
            if (this.asStr != null)
                return this.asStr;
            this.asStr = Long.toString(digit8(), 10) + Long.toString(digit7(), 10) + Long.toString(digit6(), 10) + Long.toString(digit5(), 10) + Long.toString(digit4(), 10) + Long.toString(digit3(), 10) + Long.toString(digit2(), 10) + Long.toString(digit1(), 10);
            return this.asStr;
        }
        private Integer digit1;
        public Integer digit1() {
            if (this.digit1 != null)
                return this.digit1;
            int _tmp = (int) (((b4() & 240) >> 4));
            this.digit1 = _tmp;
            return this.digit1;
        }
        private Integer digit7;
        public Integer digit7() {
            if (this.digit7 != null)
                return this.digit7;
            int _tmp = (int) (((b1() & 240) >> 4));
            this.digit7 = _tmp;
            return this.digit7;
        }
        private int b1;
        private int b2;
        private int b3;
        private int b4;
        private BcdUserTypeLe _root;
        private BcdUserTypeLe _parent;
        public int b1() { return b1; }
        public int b2() { return b2; }
        public int b3() { return b3; }
        public int b4() { return b4; }
        public BcdUserTypeLe _root() { return _root; }
        public BcdUserTypeLe _parent() { return _parent; }
    }
    public static class LeadingZeroLtrObj extends KaitaiStruct {
        public static LeadingZeroLtrObj fromFile(String fileName) throws IOException {
            return new LeadingZeroLtrObj(new ByteBufferKaitaiStream(fileName));
        }

        public LeadingZeroLtrObj(KaitaiStream _io) {
            this(_io, null, null);
        }

        public LeadingZeroLtrObj(KaitaiStream _io, BcdUserTypeLe _parent) {
            this(_io, _parent, null);
        }

        public LeadingZeroLtrObj(KaitaiStream _io, BcdUserTypeLe _parent, BcdUserTypeLe _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.b1 = this._io.readU1();
            this.b2 = this._io.readU1();
            this.b3 = this._io.readU1();
            this.b4 = this._io.readU1();
        }
        private Integer asInt;
        public Integer asInt() {
            if (this.asInt != null)
                return this.asInt;
            int _tmp = (int) (((((((((digit8() * 1) + (digit7() * 10)) + (digit6() * 100)) + (digit5() * 1000)) + (digit4() * 10000)) + (digit3() * 100000)) + (digit2() * 1000000)) + (digit1() * 10000000)));
            this.asInt = _tmp;
            return this.asInt;
        }
        private Integer digit2;
        public Integer digit2() {
            if (this.digit2 != null)
                return this.digit2;
            int _tmp = (int) ((b4() & 15));
            this.digit2 = _tmp;
            return this.digit2;
        }
        private Integer digit4;
        public Integer digit4() {
            if (this.digit4 != null)
                return this.digit4;
            int _tmp = (int) ((b3() & 15));
            this.digit4 = _tmp;
            return this.digit4;
        }
        private Integer digit3;
        public Integer digit3() {
            if (this.digit3 != null)
                return this.digit3;
            int _tmp = (int) (((b3() & 240) >> 4));
            this.digit3 = _tmp;
            return this.digit3;
        }
        private Integer digit5;
        public Integer digit5() {
            if (this.digit5 != null)
                return this.digit5;
            int _tmp = (int) (((b2() & 240) >> 4));
            this.digit5 = _tmp;
            return this.digit5;
        }
        private Integer digit8;
        public Integer digit8() {
            if (this.digit8 != null)
                return this.digit8;
            int _tmp = (int) ((b1() & 15));
            this.digit8 = _tmp;
            return this.digit8;
        }
        private Integer digit6;
        public Integer digit6() {
            if (this.digit6 != null)
                return this.digit6;
            int _tmp = (int) ((b2() & 15));
            this.digit6 = _tmp;
            return this.digit6;
        }
        private String asStr;
        public String asStr() {
            if (this.asStr != null)
                return this.asStr;
            this.asStr = Long.toString(digit1(), 10) + Long.toString(digit2(), 10) + Long.toString(digit3(), 10) + Long.toString(digit4(), 10) + Long.toString(digit5(), 10) + Long.toString(digit6(), 10) + Long.toString(digit7(), 10) + Long.toString(digit8(), 10);
            return this.asStr;
        }
        private Integer digit1;
        public Integer digit1() {
            if (this.digit1 != null)
                return this.digit1;
            int _tmp = (int) (((b4() & 240) >> 4));
            this.digit1 = _tmp;
            return this.digit1;
        }
        private Integer digit7;
        public Integer digit7() {
            if (this.digit7 != null)
                return this.digit7;
            int _tmp = (int) (((b1() & 240) >> 4));
            this.digit7 = _tmp;
            return this.digit7;
        }
        private int b1;
        private int b2;
        private int b3;
        private int b4;
        private BcdUserTypeLe _root;
        private BcdUserTypeLe _parent;
        public int b1() { return b1; }
        public int b2() { return b2; }
        public int b3() { return b3; }
        public int b4() { return b4; }
        public BcdUserTypeLe _root() { return _root; }
        public BcdUserTypeLe _parent() { return _parent; }
    }
    private LtrObj ltr;
    private RtlObj rtl;
    private LeadingZeroLtrObj leadingZeroLtr;
    private BcdUserTypeLe _root;
    private KaitaiStruct _parent;
    private byte[] _raw_ltr;
    private byte[] _raw_rtl;
    private byte[] _raw_leadingZeroLtr;
    public LtrObj ltr() { return ltr; }
    public RtlObj rtl() { return rtl; }
    public LeadingZeroLtrObj leadingZeroLtr() { return leadingZeroLtr; }
    public BcdUserTypeLe _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    public byte[] _raw_ltr() { return _raw_ltr; }
    public byte[] _raw_rtl() { return _raw_rtl; }
    public byte[] _raw_leadingZeroLtr() { return _raw_leadingZeroLtr; }
}
