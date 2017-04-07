// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;

import java.io.IOException;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.nio.charset.Charset;

public class FixedStruct extends KaitaiStruct {
    public static FixedStruct fromFile(String fileName) throws IOException {
        return new FixedStruct(new KaitaiStream(fileName));
    }

    public FixedStruct(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _read();
    }

    public FixedStruct(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _read();
    }

    public FixedStruct(KaitaiStream _io, KaitaiStruct _parent, FixedStruct _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _read();
    }
    private void _read() {
    }
    public static class Header extends KaitaiStruct {
        public static Header fromFile(String fileName) throws IOException {
            return new Header(new KaitaiStream(fileName));
        }

        public Header(KaitaiStream _io) {
            super(_io);
            _read();
        }

        public Header(KaitaiStream _io, FixedStruct _parent) {
            super(_io);
            this._parent = _parent;
            _read();
        }

        public Header(KaitaiStream _io, FixedStruct _parent, FixedStruct _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.magic1 = this._io.ensureFixedContents(new byte[] { 80, 65, 67, 75, 45, 49 });
            this.uint8 = this._io.readU1();
            this.sint8 = this._io.readS1();
            this.magicUint = this._io.ensureFixedContents(new byte[] { 80, 65, 67, 75, 45, 85, 45, 68, 69, 70 });
            this.uint16 = this._io.readU2le();
            this.uint32 = this._io.readU4le();
            this.uint64 = this._io.readU8le();
            this.magicSint = this._io.ensureFixedContents(new byte[] { 80, 65, 67, 75, 45, 83, 45, 68, 69, 70 });
            this.sint16 = this._io.readS2le();
            this.sint32 = this._io.readS4le();
            this.sint64 = this._io.readS8le();
            this.magicUintLe = this._io.ensureFixedContents(new byte[] { 80, 65, 67, 75, 45, 85, 45, 76, 69 });
            this.uint16le = this._io.readU2le();
            this.uint32le = this._io.readU4le();
            this.uint64le = this._io.readU8le();
            this.magicSintLe = this._io.ensureFixedContents(new byte[] { 80, 65, 67, 75, 45, 83, 45, 76, 69 });
            this.sint16le = this._io.readS2le();
            this.sint32le = this._io.readS4le();
            this.sint64le = this._io.readS8le();
            this.magicUintBe = this._io.ensureFixedContents(new byte[] { 80, 65, 67, 75, 45, 85, 45, 66, 69 });
            this.uint16be = this._io.readU2be();
            this.uint32be = this._io.readU4be();
            this.uint64be = this._io.readU8be();
            this.magicSintBe = this._io.ensureFixedContents(new byte[] { 80, 65, 67, 75, 45, 83, 45, 66, 69 });
            this.sint16be = this._io.readS2be();
            this.sint32be = this._io.readS4be();
            this.sint64be = this._io.readS8be();
        }
        private byte[] magic1;
        private int uint8;
        private byte sint8;
        private byte[] magicUint;
        private int uint16;
        private long uint32;
        private long uint64;
        private byte[] magicSint;
        private short sint16;
        private int sint32;
        private long sint64;
        private byte[] magicUintLe;
        private int uint16le;
        private long uint32le;
        private long uint64le;
        private byte[] magicSintLe;
        private short sint16le;
        private int sint32le;
        private long sint64le;
        private byte[] magicUintBe;
        private int uint16be;
        private long uint32be;
        private long uint64be;
        private byte[] magicSintBe;
        private short sint16be;
        private int sint32be;
        private long sint64be;
        private FixedStruct _root;
        private FixedStruct _parent;
        public byte[] magic1() { return magic1; }
        public int uint8() { return uint8; }
        public byte sint8() { return sint8; }
        public byte[] magicUint() { return magicUint; }
        public int uint16() { return uint16; }
        public long uint32() { return uint32; }
        public long uint64() { return uint64; }
        public byte[] magicSint() { return magicSint; }
        public short sint16() { return sint16; }
        public int sint32() { return sint32; }
        public long sint64() { return sint64; }
        public byte[] magicUintLe() { return magicUintLe; }
        public int uint16le() { return uint16le; }
        public long uint32le() { return uint32le; }
        public long uint64le() { return uint64le; }
        public byte[] magicSintLe() { return magicSintLe; }
        public short sint16le() { return sint16le; }
        public int sint32le() { return sint32le; }
        public long sint64le() { return sint64le; }
        public byte[] magicUintBe() { return magicUintBe; }
        public int uint16be() { return uint16be; }
        public long uint32be() { return uint32be; }
        public long uint64be() { return uint64be; }
        public byte[] magicSintBe() { return magicSintBe; }
        public short sint16be() { return sint16be; }
        public int sint32be() { return sint32be; }
        public long sint64be() { return sint64be; }
        public FixedStruct _root() { return _root; }
        public FixedStruct _parent() { return _parent; }
    }
    private Header hdr;
    public Header hdr() {
        if (this.hdr != null)
            return this.hdr;
        long _pos = this._io.pos();
        this._io.seek(0);
        this.hdr = new Header(this._io, this, _root);
        this._io.seek(_pos);
        return this.hdr;
    }
    private FixedStruct _root;
    private KaitaiStruct _parent;
    public FixedStruct _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
