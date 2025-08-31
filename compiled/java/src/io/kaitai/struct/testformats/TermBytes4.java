// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class TermBytes4 extends KaitaiStruct {
    public static TermBytes4 fromFile(String fileName) throws IOException {
        return new TermBytes4(new ByteBufferKaitaiStream(fileName));
    }

    public TermBytes4(KaitaiStream _io) {
        this(_io, null, null);
    }

    public TermBytes4(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public TermBytes4(KaitaiStream _io, KaitaiStruct _parent, TermBytes4 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        KaitaiStream _io_s1 = this._io.substream(3);
        this.s1 = new S1Type(_io_s1, this, _root);
        this.skipTerm1 = this._io.readU1();
        KaitaiStream _io_s2 = this._io.substream(3);
        this.s2 = new S2Type(_io_s2, this, _root);
        this.skipTerm2 = this._io.readU1();
        KaitaiStream _io_s3 = this._io.substream(3);
        this.s3 = new S3Type(_io_s3, this, _root);
    }

    public void _fetchInstances() {
        this.s1._fetchInstances();
        this.s2._fetchInstances();
        this.s3._fetchInstances();
    }
    public static class S1Type extends KaitaiStruct {
        public static S1Type fromFile(String fileName) throws IOException {
            return new S1Type(new ByteBufferKaitaiStream(fileName));
        }

        public S1Type(KaitaiStream _io) {
            this(_io, null, null);
        }

        public S1Type(KaitaiStream _io, TermBytes4 _parent) {
            this(_io, _parent, null);
        }

        public S1Type(KaitaiStream _io, TermBytes4 _parent, TermBytes4 _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.value = this._io.readBytesTerm((byte) 124, false, true, false);
        }

        public void _fetchInstances() {
        }
        private byte[] value;
        private TermBytes4 _root;
        private TermBytes4 _parent;
        public byte[] value() { return value; }
        public TermBytes4 _root() { return _root; }
        public TermBytes4 _parent() { return _parent; }
    }
    public static class S2Type extends KaitaiStruct {
        public static S2Type fromFile(String fileName) throws IOException {
            return new S2Type(new ByteBufferKaitaiStream(fileName));
        }

        public S2Type(KaitaiStream _io) {
            this(_io, null, null);
        }

        public S2Type(KaitaiStream _io, TermBytes4 _parent) {
            this(_io, _parent, null);
        }

        public S2Type(KaitaiStream _io, TermBytes4 _parent, TermBytes4 _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.value = this._io.readBytesTerm((byte) 124, false, false, false);
        }

        public void _fetchInstances() {
        }
        private byte[] value;
        private TermBytes4 _root;
        private TermBytes4 _parent;
        public byte[] value() { return value; }
        public TermBytes4 _root() { return _root; }
        public TermBytes4 _parent() { return _parent; }
    }
    public static class S3Type extends KaitaiStruct {
        public static S3Type fromFile(String fileName) throws IOException {
            return new S3Type(new ByteBufferKaitaiStream(fileName));
        }

        public S3Type(KaitaiStream _io) {
            this(_io, null, null);
        }

        public S3Type(KaitaiStream _io, TermBytes4 _parent) {
            this(_io, _parent, null);
        }

        public S3Type(KaitaiStream _io, TermBytes4 _parent, TermBytes4 _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.value = this._io.readBytesTerm((byte) 64, true, true, false);
        }

        public void _fetchInstances() {
        }
        private byte[] value;
        private TermBytes4 _root;
        private TermBytes4 _parent;
        public byte[] value() { return value; }
        public TermBytes4 _root() { return _root; }
        public TermBytes4 _parent() { return _parent; }
    }
    private S1Type s1;
    private int skipTerm1;
    private S2Type s2;
    private int skipTerm2;
    private S3Type s3;
    private TermBytes4 _root;
    private KaitaiStruct _parent;
    public S1Type s1() { return s1; }
    public int skipTerm1() { return skipTerm1; }
    public S2Type s2() { return s2; }
    public int skipTerm2() { return skipTerm2; }
    public S3Type s3() { return s3; }
    public TermBytes4 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
