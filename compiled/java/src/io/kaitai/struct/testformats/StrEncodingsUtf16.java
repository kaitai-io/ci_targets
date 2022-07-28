// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.Charset;

public class StrEncodingsUtf16 extends KaitaiStruct {
    public static StrEncodingsUtf16 fromFile(String fileName) throws IOException {
        return new StrEncodingsUtf16(new ByteBufferKaitaiStream(fileName));
    }

    public StrEncodingsUtf16(KaitaiStream _io) {
        this(_io, null, null);
    }

    public StrEncodingsUtf16(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public StrEncodingsUtf16(KaitaiStream _io, KaitaiStruct _parent, StrEncodingsUtf16 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.lenBe = this._io.readU4le();
        KaitaiStream _io_beBomRemoved = this._io.substream(lenBe())
        this.beBomRemoved = new StrBeBomRemoved(_io_beBomRemoved, this, _root);
        this.lenLe = this._io.readU4le();
        KaitaiStream _io_leBomRemoved = this._io.substream(lenLe())
        this.leBomRemoved = new StrLeBomRemoved(_io_leBomRemoved, this, _root);
    }
    public static class StrBeBomRemoved extends KaitaiStruct {
        public static StrBeBomRemoved fromFile(String fileName) throws IOException {
            return new StrBeBomRemoved(new ByteBufferKaitaiStream(fileName));
        }

        public StrBeBomRemoved(KaitaiStream _io) {
            this(_io, null, null);
        }

        public StrBeBomRemoved(KaitaiStream _io, StrEncodingsUtf16 _parent) {
            this(_io, _parent, null);
        }

        public StrBeBomRemoved(KaitaiStream _io, StrEncodingsUtf16 _parent, StrEncodingsUtf16 _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.bom = this._io.readU2be();
            this.str = new String(this._io.readBytesFull(), Charset.forName("UTF-16BE"));
        }
        private int bom;
        private String str;
        private StrEncodingsUtf16 _root;
        private StrEncodingsUtf16 _parent;
        public int bom() { return bom; }
        public String str() { return str; }
        public StrEncodingsUtf16 _root() { return _root; }
        public StrEncodingsUtf16 _parent() { return _parent; }
    }
    public static class StrLeBomRemoved extends KaitaiStruct {
        public static StrLeBomRemoved fromFile(String fileName) throws IOException {
            return new StrLeBomRemoved(new ByteBufferKaitaiStream(fileName));
        }

        public StrLeBomRemoved(KaitaiStream _io) {
            this(_io, null, null);
        }

        public StrLeBomRemoved(KaitaiStream _io, StrEncodingsUtf16 _parent) {
            this(_io, _parent, null);
        }

        public StrLeBomRemoved(KaitaiStream _io, StrEncodingsUtf16 _parent, StrEncodingsUtf16 _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.bom = this._io.readU2le();
            this.str = new String(this._io.readBytesFull(), Charset.forName("UTF-16LE"));
        }
        private int bom;
        private String str;
        private StrEncodingsUtf16 _root;
        private StrEncodingsUtf16 _parent;
        public int bom() { return bom; }
        public String str() { return str; }
        public StrEncodingsUtf16 _root() { return _root; }
        public StrEncodingsUtf16 _parent() { return _parent; }
    }
    private long lenBe;
    private StrBeBomRemoved beBomRemoved;
    private long lenLe;
    private StrLeBomRemoved leBomRemoved;
    private StrEncodingsUtf16 _root;
    private KaitaiStruct _parent;
    private byte[] _raw_beBomRemoved;
    private byte[] _raw_leBomRemoved;
    public long lenBe() { return lenBe; }
    public StrBeBomRemoved beBomRemoved() { return beBomRemoved; }
    public long lenLe() { return lenLe; }
    public StrLeBomRemoved leBomRemoved() { return leBomRemoved; }
    public StrEncodingsUtf16 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    public byte[] _raw_beBomRemoved() { return _raw_beBomRemoved; }
    public byte[] _raw_leBomRemoved() { return _raw_leBomRemoved; }
}
