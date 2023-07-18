// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.nio.charset.StandardCharsets;

public class CastNested extends KaitaiStruct {
    public static CastNested fromFile(String fileName) throws IOException {
        return new CastNested(new ByteBufferKaitaiStream(fileName));
    }

    public CastNested(KaitaiStream _io) {
        this(_io, null, null);
    }

    public CastNested(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public CastNested(KaitaiStream _io, KaitaiStruct _parent, CastNested _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.opcodes = new ArrayList<Opcode>();
        {
            int i = 0;
            while (!this._io.isEof()) {
                this.opcodes.add(new Opcode(this._io, this, _root));
                i++;
            }
        }
    }
    public static class Opcode extends KaitaiStruct {
        public static Opcode fromFile(String fileName) throws IOException {
            return new Opcode(new ByteBufferKaitaiStream(fileName));
        }

        public Opcode(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Opcode(KaitaiStream _io, CastNested _parent) {
            this(_io, _parent, null);
        }

        public Opcode(KaitaiStream _io, CastNested _parent, CastNested _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.code = this._io.readU1();
            switch (code()) {
            case 73: {
                this.body = new Intval(this._io, this, _root);
                break;
            }
            case 83: {
                this.body = new Strval(this._io, this, _root);
                break;
            }
            }
        }
        public static class Intval extends KaitaiStruct {
            public static Intval fromFile(String fileName) throws IOException {
                return new Intval(new ByteBufferKaitaiStream(fileName));
            }

            public Intval(KaitaiStream _io) {
                this(_io, null, null);
            }

            public Intval(KaitaiStream _io, CastNested.Opcode _parent) {
                this(_io, _parent, null);
            }

            public Intval(KaitaiStream _io, CastNested.Opcode _parent, CastNested _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
                this.value = this._io.readU1();
            }
            private int value;
            private CastNested _root;
            private CastNested.Opcode _parent;
            public int value() { return value; }
            public CastNested _root() { return _root; }
            public CastNested.Opcode _parent() { return _parent; }
        }
        public static class Strval extends KaitaiStruct {
            public static Strval fromFile(String fileName) throws IOException {
                return new Strval(new ByteBufferKaitaiStream(fileName));
            }

            public Strval(KaitaiStream _io) {
                this(_io, null, null);
            }

            public Strval(KaitaiStream _io, CastNested.Opcode _parent) {
                this(_io, _parent, null);
            }

            public Strval(KaitaiStream _io, CastNested.Opcode _parent, CastNested _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
                this.value = new String(this._io.readBytesTerm((byte) 0, false, true, true), StandardCharsets.US_ASCII);
            }
            private String value;
            private CastNested _root;
            private CastNested.Opcode _parent;
            public String value() { return value; }
            public CastNested _root() { return _root; }
            public CastNested.Opcode _parent() { return _parent; }
        }
        private int code;
        private KaitaiStruct body;
        private CastNested _root;
        private CastNested _parent;
        public int code() { return code; }
        public KaitaiStruct body() { return body; }
        public CastNested _root() { return _root; }
        public CastNested _parent() { return _parent; }
    }
    private CastNested.Opcode.Strval opcodes0Str;
    public CastNested.Opcode.Strval opcodes0Str() {
        if (this.opcodes0Str != null)
            return this.opcodes0Str;
        this.opcodes0Str = ((CastNested.Opcode.Strval) (opcodes().get((int) 0).body()));
        return this.opcodes0Str;
    }
    private String opcodes0StrValue;
    public String opcodes0StrValue() {
        if (this.opcodes0StrValue != null)
            return this.opcodes0StrValue;
        this.opcodes0StrValue = ((CastNested.Opcode.Strval) (opcodes().get((int) 0).body())).value();
        return this.opcodes0StrValue;
    }
    private CastNested.Opcode.Intval opcodes1Int;
    public CastNested.Opcode.Intval opcodes1Int() {
        if (this.opcodes1Int != null)
            return this.opcodes1Int;
        this.opcodes1Int = ((CastNested.Opcode.Intval) (opcodes().get((int) 1).body()));
        return this.opcodes1Int;
    }
    private Integer opcodes1IntValue;
    public Integer opcodes1IntValue() {
        if (this.opcodes1IntValue != null)
            return this.opcodes1IntValue;
        int _tmp = (int) (((CastNested.Opcode.Intval) (opcodes().get((int) 1).body())).value());
        this.opcodes1IntValue = _tmp;
        return this.opcodes1IntValue;
    }
    private ArrayList<Opcode> opcodes;
    private CastNested _root;
    private KaitaiStruct _parent;
    public ArrayList<Opcode> opcodes() { return opcodes; }
    public CastNested _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
