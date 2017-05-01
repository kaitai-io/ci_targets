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

public class SwitchManualIntSizeEos extends KaitaiStruct {
    public static SwitchManualIntSizeEos fromFile(String fileName) throws IOException {
        return new SwitchManualIntSizeEos(new KaitaiStream(fileName));
    }

    public SwitchManualIntSizeEos(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _read();
    }

    public SwitchManualIntSizeEos(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _read();
    }

    public SwitchManualIntSizeEos(KaitaiStream _io, KaitaiStruct _parent, SwitchManualIntSizeEos _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _read();
    }
    private void _read() {
        this.chunks = new ArrayList<Chunk>();
        while (!this._io.isEof()) {
            this.chunks.add(new Chunk(this._io, this, _root));
        }
    }
    public static class Chunk extends KaitaiStruct {
        public static Chunk fromFile(String fileName) throws IOException {
            return new Chunk(new KaitaiStream(fileName));
        }

        public Chunk(KaitaiStream _io) {
            super(_io);
            _read();
        }

        public Chunk(KaitaiStream _io, SwitchManualIntSizeEos _parent) {
            super(_io);
            this._parent = _parent;
            _read();
        }

        public Chunk(KaitaiStream _io, SwitchManualIntSizeEos _parent, SwitchManualIntSizeEos _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.code = this._io.readU1();
            this.size = this._io.readU4le();
            this._raw_body = this._io.readBytes(size());
            KaitaiStream _io__raw_body = new KaitaiStream(_raw_body);
            this.body = new ChunkBody(_io__raw_body, this, _root);
        }
        private int code;
        private long size;
        private ChunkBody body;
        private SwitchManualIntSizeEos _root;
        private SwitchManualIntSizeEos _parent;
        private byte[] _raw_body;
        public int code() { return code; }
        public long size() { return size; }
        public ChunkBody body() { return body; }
        public SwitchManualIntSizeEos _root() { return _root; }
        public SwitchManualIntSizeEos _parent() { return _parent; }
        public byte[] _raw_body() { return _raw_body; }
    }
    public static class ChunkBody extends KaitaiStruct {
        public static ChunkBody fromFile(String fileName) throws IOException {
            return new ChunkBody(new KaitaiStream(fileName));
        }

        public ChunkBody(KaitaiStream _io) {
            super(_io);
            _read();
        }

        public ChunkBody(KaitaiStream _io, SwitchManualIntSizeEos.Chunk _parent) {
            super(_io);
            this._parent = _parent;
            _read();
        }

        public ChunkBody(KaitaiStream _io, SwitchManualIntSizeEos.Chunk _parent, SwitchManualIntSizeEos _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            switch (_parent().code()) {
            case 17: {
                this._raw_body = this._io.readBytesFull();
                KaitaiStream _io__raw_body = new KaitaiStream(_raw_body);
                this.body = new ChunkMeta(_io__raw_body, this, _root);
                break;
            }
            case 34: {
                this._raw_body = this._io.readBytesFull();
                KaitaiStream _io__raw_body = new KaitaiStream(_raw_body);
                this.body = new ChunkDir(_io__raw_body, this, _root);
                break;
            }
            default: {
                this.body = this._io.readBytesFull();
                break;
            }
            }
        }
        public static class ChunkMeta extends KaitaiStruct {
            public static ChunkMeta fromFile(String fileName) throws IOException {
                return new ChunkMeta(new KaitaiStream(fileName));
            }

            public ChunkMeta(KaitaiStream _io) {
                super(_io);
                _read();
            }

            public ChunkMeta(KaitaiStream _io, SwitchManualIntSizeEos.ChunkBody _parent) {
                super(_io);
                this._parent = _parent;
                _read();
            }

            public ChunkMeta(KaitaiStream _io, SwitchManualIntSizeEos.ChunkBody _parent, SwitchManualIntSizeEos _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
                this.title = new String(this._io.readBytesTerm(0, false, true, true), Charset.forName("UTF-8"));
                this.author = new String(this._io.readBytesTerm(0, false, true, true), Charset.forName("UTF-8"));
            }
            private String title;
            private String author;
            private SwitchManualIntSizeEos _root;
            private SwitchManualIntSizeEos.ChunkBody _parent;
            public String title() { return title; }
            public String author() { return author; }
            public SwitchManualIntSizeEos _root() { return _root; }
            public SwitchManualIntSizeEos.ChunkBody _parent() { return _parent; }
        }
        public static class ChunkDir extends KaitaiStruct {
            public static ChunkDir fromFile(String fileName) throws IOException {
                return new ChunkDir(new KaitaiStream(fileName));
            }

            public ChunkDir(KaitaiStream _io) {
                super(_io);
                _read();
            }

            public ChunkDir(KaitaiStream _io, SwitchManualIntSizeEos.ChunkBody _parent) {
                super(_io);
                this._parent = _parent;
                _read();
            }

            public ChunkDir(KaitaiStream _io, SwitchManualIntSizeEos.ChunkBody _parent, SwitchManualIntSizeEos _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
                this.entries = new ArrayList<String>();
                while (!this._io.isEof()) {
                    this.entries.add(new String(this._io.readBytes(4), Charset.forName("UTF-8")));
                }
            }
            private ArrayList<String> entries;
            private SwitchManualIntSizeEos _root;
            private SwitchManualIntSizeEos.ChunkBody _parent;
            public ArrayList<String> entries() { return entries; }
            public SwitchManualIntSizeEos _root() { return _root; }
            public SwitchManualIntSizeEos.ChunkBody _parent() { return _parent; }
        }
        private Object body;
        private SwitchManualIntSizeEos _root;
        private SwitchManualIntSizeEos.Chunk _parent;
        private byte[] _raw_body;
        public Object body() { return body; }
        public SwitchManualIntSizeEos _root() { return _root; }
        public SwitchManualIntSizeEos.Chunk _parent() { return _parent; }
        public byte[] _raw_body() { return _raw_body; }
    }
    private ArrayList<Chunk> chunks;
    private SwitchManualIntSizeEos _root;
    private KaitaiStruct _parent;
    public ArrayList<Chunk> chunks() { return chunks; }
    public SwitchManualIntSizeEos _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
