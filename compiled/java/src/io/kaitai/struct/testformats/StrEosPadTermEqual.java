// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

public class StrEosPadTermEqual extends KaitaiStruct {
    public static StrEosPadTermEqual fromFile(String fileName) throws IOException {
        return new StrEosPadTermEqual(new ByteBufferKaitaiStream(fileName));
    }

    public StrEosPadTermEqual(KaitaiStream _io) {
        this(_io, null, null);
    }

    public StrEosPadTermEqual(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public StrEosPadTermEqual(KaitaiStream _io, KaitaiStruct _parent, StrEosPadTermEqual _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        KaitaiStream _io_s1 = this._io.substream(20);
        this.s1 = new S1Type(_io_s1, this, _root);
        KaitaiStream _io_s2 = this._io.substream(20);
        this.s2 = new S2Type(_io_s2, this, _root);
        KaitaiStream _io_s3 = this._io.substream(20);
        this.s3 = new S3Type(_io_s3, this, _root);
        KaitaiStream _io_s4 = this._io.substream(20);
        this.s4 = new S4Type(_io_s4, this, _root);
    }

    public void _fetchInstances() {
        this.s1._fetchInstances();
        this.s2._fetchInstances();
        this.s3._fetchInstances();
        this.s4._fetchInstances();
    }
    public static class S1Type extends KaitaiStruct {
        public static S1Type fromFile(String fileName) throws IOException {
            return new S1Type(new ByteBufferKaitaiStream(fileName));
        }

        public S1Type(KaitaiStream _io) {
            this(_io, null, null);
        }

        public S1Type(KaitaiStream _io, StrEosPadTermEqual _parent) {
            this(_io, _parent, null);
        }

        public S1Type(KaitaiStream _io, StrEosPadTermEqual _parent, StrEosPadTermEqual _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.value = new String(KaitaiStream.bytesTerminate(this._io.readBytesFull(), (byte) 64, false), StandardCharsets.UTF_8);
        }

        public void _fetchInstances() {
        }
        public String value() { return value; }
        public StrEosPadTermEqual _root() { return _root; }
        public StrEosPadTermEqual _parent() { return _parent; }
        private String value;
        private StrEosPadTermEqual _root;
        private StrEosPadTermEqual _parent;
    }
    public static class S2Type extends KaitaiStruct {
        public static S2Type fromFile(String fileName) throws IOException {
            return new S2Type(new ByteBufferKaitaiStream(fileName));
        }

        public S2Type(KaitaiStream _io) {
            this(_io, null, null);
        }

        public S2Type(KaitaiStream _io, StrEosPadTermEqual _parent) {
            this(_io, _parent, null);
        }

        public S2Type(KaitaiStream _io, StrEosPadTermEqual _parent, StrEosPadTermEqual _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.value = new String(KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytesFull(), (byte) 43), (byte) 64, true), StandardCharsets.UTF_8);
        }

        public void _fetchInstances() {
        }
        public String value() { return value; }
        public StrEosPadTermEqual _root() { return _root; }
        public StrEosPadTermEqual _parent() { return _parent; }
        private String value;
        private StrEosPadTermEqual _root;
        private StrEosPadTermEqual _parent;
    }
    public static class S3Type extends KaitaiStruct {
        public static S3Type fromFile(String fileName) throws IOException {
            return new S3Type(new ByteBufferKaitaiStream(fileName));
        }

        public S3Type(KaitaiStream _io) {
            this(_io, null, null);
        }

        public S3Type(KaitaiStream _io, StrEosPadTermEqual _parent) {
            this(_io, _parent, null);
        }

        public S3Type(KaitaiStream _io, StrEosPadTermEqual _parent, StrEosPadTermEqual _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.value = new String(KaitaiStream.bytesTerminate(this._io.readBytesFull(), (byte) 43, false), StandardCharsets.UTF_8);
        }

        public void _fetchInstances() {
        }
        public String value() { return value; }
        public StrEosPadTermEqual _root() { return _root; }
        public StrEosPadTermEqual _parent() { return _parent; }
        private String value;
        private StrEosPadTermEqual _root;
        private StrEosPadTermEqual _parent;
    }
    public static class S4Type extends KaitaiStruct {
        public static S4Type fromFile(String fileName) throws IOException {
            return new S4Type(new ByteBufferKaitaiStream(fileName));
        }

        public S4Type(KaitaiStream _io) {
            this(_io, null, null);
        }

        public S4Type(KaitaiStream _io, StrEosPadTermEqual _parent) {
            this(_io, _parent, null);
        }

        public S4Type(KaitaiStream _io, StrEosPadTermEqual _parent, StrEosPadTermEqual _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.value = new String(KaitaiStream.bytesTerminate(this._io.readBytesFull(), (byte) 46, true), StandardCharsets.UTF_8);
        }

        public void _fetchInstances() {
        }
        public String value() { return value; }
        public StrEosPadTermEqual _root() { return _root; }
        public StrEosPadTermEqual _parent() { return _parent; }
        private String value;
        private StrEosPadTermEqual _root;
        private StrEosPadTermEqual _parent;
    }
    public S1Type s1() { return s1; }
    public S2Type s2() { return s2; }
    public S3Type s3() { return s3; }
    public S4Type s4() { return s4; }
    public StrEosPadTermEqual _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private S1Type s1;
    private S2Type s2;
    private S3Type s3;
    private S4Type s4;
    private StrEosPadTermEqual _root;
    private KaitaiStruct _parent;
}
