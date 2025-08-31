// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.nio.charset.StandardCharsets;
import java.util.List;

public class SwitchManualIntSizeEos extends KaitaiStruct {
    public static SwitchManualIntSizeEos fromFile(String fileName) throws IOException {
        return new SwitchManualIntSizeEos(new ByteBufferKaitaiStream(fileName));
    }

    public SwitchManualIntSizeEos(KaitaiStream _io) {
        this(_io, null, null);
    }

    public SwitchManualIntSizeEos(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public SwitchManualIntSizeEos(KaitaiStream _io, KaitaiStruct _parent, SwitchManualIntSizeEos _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.chunks = new ArrayList<Chunk>();
        {
            int i = 0;
            while (!this._io.isEof()) {
                this.chunks.add(new Chunk(this._io, this, _root));
                i++;
            }
        }
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.chunks.size(); i++) {
            this.chunks.get(((Number) (i)).intValue())._fetchInstances();
        }
    }
    public static class Chunk extends KaitaiStruct {
        public static Chunk fromFile(String fileName) throws IOException {
            return new Chunk(new ByteBufferKaitaiStream(fileName));
        }

        public Chunk(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Chunk(KaitaiStream _io, SwitchManualIntSizeEos _parent) {
            this(_io, _parent, null);
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
            KaitaiStream _io_body = this._io.substream(size());
            this.body = new ChunkBody(_io_body, this, _root);
        }

        public void _fetchInstances() {
            this.body._fetchInstances();
        }
        private int code;
        private long size;
        private ChunkBody body;
        private SwitchManualIntSizeEos _root;
        private SwitchManualIntSizeEos _parent;
        public int code() { return code; }
        public long size() { return size; }
        public ChunkBody body() { return body; }
        public SwitchManualIntSizeEos _root() { return _root; }
        public SwitchManualIntSizeEos _parent() { return _parent; }
    }
    public static class ChunkBody extends KaitaiStruct {
        public static ChunkBody fromFile(String fileName) throws IOException {
            return new ChunkBody(new ByteBufferKaitaiStream(fileName));
        }

        public ChunkBody(KaitaiStream _io) {
            this(_io, null, null);
        }

        public ChunkBody(KaitaiStream _io, SwitchManualIntSizeEos.Chunk _parent) {
            this(_io, _parent, null);
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
                KaitaiStream _io__raw_body = new ByteBufferKaitaiStream(this._raw_body);
                this.body = new ChunkMeta(_io__raw_body, this, _root);
                break;
            }
            case 34: {
                this._raw_body = this._io.readBytesFull();
                KaitaiStream _io__raw_body = new ByteBufferKaitaiStream(this._raw_body);
                this.body = new ChunkDir(_io__raw_body, this, _root);
                break;
            }
            default: {
                this.body = this._io.readBytesFull();
                break;
            }
            }
        }

        public void _fetchInstances() {
            switch (_parent().code()) {
            case 17: {
                ((ChunkMeta) (this.body))._fetchInstances();
                break;
            }
            case 34: {
                ((ChunkDir) (this.body))._fetchInstances();
                break;
            }
            default: {
                break;
            }
            }
        }
        public static class ChunkDir extends KaitaiStruct {
            public static ChunkDir fromFile(String fileName) throws IOException {
                return new ChunkDir(new ByteBufferKaitaiStream(fileName));
            }

            public ChunkDir(KaitaiStream _io) {
                this(_io, null, null);
            }

            public ChunkDir(KaitaiStream _io, SwitchManualIntSizeEos.ChunkBody _parent) {
                this(_io, _parent, null);
            }

            public ChunkDir(KaitaiStream _io, SwitchManualIntSizeEos.ChunkBody _parent, SwitchManualIntSizeEos _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
                this.entries = new ArrayList<String>();
                {
                    int i = 0;
                    while (!this._io.isEof()) {
                        this.entries.add(new String(this._io.readBytes(4), StandardCharsets.UTF_8));
                        i++;
                    }
                }
            }

            public void _fetchInstances() {
                for (int i = 0; i < this.entries.size(); i++) {
                }
            }
            private List<String> entries;
            private SwitchManualIntSizeEos _root;
            private SwitchManualIntSizeEos.ChunkBody _parent;
            public List<String> entries() { return entries; }
            public SwitchManualIntSizeEos _root() { return _root; }
            public SwitchManualIntSizeEos.ChunkBody _parent() { return _parent; }
        }
        public static class ChunkMeta extends KaitaiStruct {
            public static ChunkMeta fromFile(String fileName) throws IOException {
                return new ChunkMeta(new ByteBufferKaitaiStream(fileName));
            }

            public ChunkMeta(KaitaiStream _io) {
                this(_io, null, null);
            }

            public ChunkMeta(KaitaiStream _io, SwitchManualIntSizeEos.ChunkBody _parent) {
                this(_io, _parent, null);
            }

            public ChunkMeta(KaitaiStream _io, SwitchManualIntSizeEos.ChunkBody _parent, SwitchManualIntSizeEos _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
                this.title = new String(this._io.readBytesTerm((byte) 0, false, true, true), StandardCharsets.UTF_8);
                this.author = new String(this._io.readBytesTerm((byte) 0, false, true, true), StandardCharsets.UTF_8);
            }

            public void _fetchInstances() {
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
        private Object body;
        private SwitchManualIntSizeEos _root;
        private SwitchManualIntSizeEos.Chunk _parent;
        private byte[] _raw_body;
        public Object body() { return body; }
        public SwitchManualIntSizeEos _root() { return _root; }
        public SwitchManualIntSizeEos.Chunk _parent() { return _parent; }
        public byte[] _raw_body() { return _raw_body; }
    }
    private List<Chunk> chunks;
    private SwitchManualIntSizeEos _root;
    private KaitaiStruct _parent;
    public List<Chunk> chunks() { return chunks; }
    public SwitchManualIntSizeEos _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
