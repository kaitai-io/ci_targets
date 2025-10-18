// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import java.util.List;

public class SwitchManualIntSizeElse extends KaitaiStruct.ReadWrite {
    public static SwitchManualIntSizeElse fromFile(String fileName) throws IOException {
        return new SwitchManualIntSizeElse(new ByteBufferKaitaiStream(fileName));
    }
    public SwitchManualIntSizeElse() {
        this(null, null, null);
    }

    public SwitchManualIntSizeElse(KaitaiStream _io) {
        this(_io, null, null);
    }

    public SwitchManualIntSizeElse(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public SwitchManualIntSizeElse(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, SwitchManualIntSizeElse _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.chunks = new ArrayList<Chunk>();
        {
            int i = 0;
            while (!this._io.isEof()) {
                Chunk _t_chunks = new Chunk(this._io, this, _root);
                try {
                    _t_chunks._read();
                } finally {
                    this.chunks.add(_t_chunks);
                }
                i++;
            }
        }
        _dirty = false;
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.chunks.size(); i++) {
            this.chunks.get(((Number) (i)).intValue())._fetchInstances();
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        for (int i = 0; i < this.chunks.size(); i++) {
            if (this._io.isEof())
                throw new ConsistencyError("chunks", 0, this._io.size() - this._io.pos());
            this.chunks.get(((Number) (i)).intValue())._write_Seq(this._io);
        }
        if (!(this._io.isEof()))
            throw new ConsistencyError("chunks", 0, this._io.size() - this._io.pos());
    }

    public void _check() {
        for (int i = 0; i < this.chunks.size(); i++) {
            if (!Objects.equals(this.chunks.get(((Number) (i)).intValue())._root(), _root()))
                throw new ConsistencyError("chunks", _root(), this.chunks.get(((Number) (i)).intValue())._root());
            if (!Objects.equals(this.chunks.get(((Number) (i)).intValue())._parent(), this))
                throw new ConsistencyError("chunks", this, this.chunks.get(((Number) (i)).intValue())._parent());
        }
        _dirty = false;
    }
    public static class Chunk extends KaitaiStruct.ReadWrite {
        public static Chunk fromFile(String fileName) throws IOException {
            return new Chunk(new ByteBufferKaitaiStream(fileName));
        }
        public Chunk() {
            this(null, null, null);
        }

        public Chunk(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Chunk(KaitaiStream _io, SwitchManualIntSizeElse _parent) {
            this(_io, _parent, null);
        }

        public Chunk(KaitaiStream _io, SwitchManualIntSizeElse _parent, SwitchManualIntSizeElse _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.code = this._io.readU1();
            this.size = this._io.readU4le();
            switch (code()) {
            case 17: {
                this._raw_body = this._io.readBytes(size());
                KaitaiStream _io__raw_body = new ByteBufferKaitaiStream(this._raw_body);
                this.body = new ChunkMeta(_io__raw_body, this, _root);
                ((ChunkMeta) (this.body))._read();
                break;
            }
            case 34: {
                this._raw_body = this._io.readBytes(size());
                KaitaiStream _io__raw_body = new ByteBufferKaitaiStream(this._raw_body);
                this.body = new ChunkDir(_io__raw_body, this, _root);
                ((ChunkDir) (this.body))._read();
                break;
            }
            default: {
                this._raw_body = this._io.readBytes(size());
                KaitaiStream _io__raw_body = new ByteBufferKaitaiStream(this._raw_body);
                this.body = new Dummy(_io__raw_body, this, _root);
                ((Dummy) (this.body))._read();
                break;
            }
            }
            _dirty = false;
        }

        public void _fetchInstances() {
            switch (code()) {
            case 17: {
                ((ChunkMeta) (this.body))._fetchInstances();
                break;
            }
            case 34: {
                ((ChunkDir) (this.body))._fetchInstances();
                break;
            }
            default: {
                ((Dummy) (this.body))._fetchInstances();
                break;
            }
            }
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU1(this.code);
            this._io.writeU4le(this.size);
            switch (code()) {
            case 17: {
                final KaitaiStream _io__raw_body = new ByteBufferKaitaiStream(size());
                this._io.addChildStream(_io__raw_body);
                {
                    long _pos2 = this._io.pos();
                    this._io.seek(this._io.pos() + (size()));
                    final Chunk _this = this;
                    _io__raw_body.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                        @Override
                        protected void write(KaitaiStream parent) {
                            _this._raw_body = _io__raw_body.toByteArray();
                            if (((byte[]) (_this._raw_body)).length != size())
                                throw new ConsistencyError("raw(body)", size(), ((byte[]) (_this._raw_body)).length);
                            parent.writeBytes(((byte[]) (((byte[]) (_this._raw_body)))));
                        }
                    });
                }
                ((ChunkMeta) (this.body))._write_Seq(_io__raw_body);
                break;
            }
            case 34: {
                final KaitaiStream _io__raw_body = new ByteBufferKaitaiStream(size());
                this._io.addChildStream(_io__raw_body);
                {
                    long _pos2 = this._io.pos();
                    this._io.seek(this._io.pos() + (size()));
                    final Chunk _this = this;
                    _io__raw_body.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                        @Override
                        protected void write(KaitaiStream parent) {
                            _this._raw_body = _io__raw_body.toByteArray();
                            if (((byte[]) (_this._raw_body)).length != size())
                                throw new ConsistencyError("raw(body)", size(), ((byte[]) (_this._raw_body)).length);
                            parent.writeBytes(((byte[]) (((byte[]) (_this._raw_body)))));
                        }
                    });
                }
                ((ChunkDir) (this.body))._write_Seq(_io__raw_body);
                break;
            }
            default: {
                final KaitaiStream _io__raw_body = new ByteBufferKaitaiStream(size());
                this._io.addChildStream(_io__raw_body);
                {
                    long _pos2 = this._io.pos();
                    this._io.seek(this._io.pos() + (size()));
                    final Chunk _this = this;
                    _io__raw_body.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                        @Override
                        protected void write(KaitaiStream parent) {
                            _this._raw_body = _io__raw_body.toByteArray();
                            if (((byte[]) (_this._raw_body)).length != size())
                                throw new ConsistencyError("raw(body)", size(), ((byte[]) (_this._raw_body)).length);
                            parent.writeBytes(((byte[]) (((byte[]) (_this._raw_body)))));
                        }
                    });
                }
                ((Dummy) (this.body))._write_Seq(_io__raw_body);
                break;
            }
            }
        }

        public void _check() {
            switch (code()) {
            case 17: {
                if (!Objects.equals(((SwitchManualIntSizeElse.Chunk.ChunkMeta) (this.body))._root(), _root()))
                    throw new ConsistencyError("body", _root(), ((SwitchManualIntSizeElse.Chunk.ChunkMeta) (this.body))._root());
                if (!Objects.equals(((SwitchManualIntSizeElse.Chunk.ChunkMeta) (this.body))._parent(), this))
                    throw new ConsistencyError("body", this, ((SwitchManualIntSizeElse.Chunk.ChunkMeta) (this.body))._parent());
                break;
            }
            case 34: {
                if (!Objects.equals(((SwitchManualIntSizeElse.Chunk.ChunkDir) (this.body))._root(), _root()))
                    throw new ConsistencyError("body", _root(), ((SwitchManualIntSizeElse.Chunk.ChunkDir) (this.body))._root());
                if (!Objects.equals(((SwitchManualIntSizeElse.Chunk.ChunkDir) (this.body))._parent(), this))
                    throw new ConsistencyError("body", this, ((SwitchManualIntSizeElse.Chunk.ChunkDir) (this.body))._parent());
                break;
            }
            default: {
                if (!Objects.equals(((SwitchManualIntSizeElse.Chunk.Dummy) (this.body))._root(), _root()))
                    throw new ConsistencyError("body", _root(), ((SwitchManualIntSizeElse.Chunk.Dummy) (this.body))._root());
                if (!Objects.equals(((SwitchManualIntSizeElse.Chunk.Dummy) (this.body))._parent(), this))
                    throw new ConsistencyError("body", this, ((SwitchManualIntSizeElse.Chunk.Dummy) (this.body))._parent());
                break;
            }
            }
            _dirty = false;
        }
        public static class ChunkDir extends KaitaiStruct.ReadWrite {
            public static ChunkDir fromFile(String fileName) throws IOException {
                return new ChunkDir(new ByteBufferKaitaiStream(fileName));
            }
            public ChunkDir() {
                this(null, null, null);
            }

            public ChunkDir(KaitaiStream _io) {
                this(_io, null, null);
            }

            public ChunkDir(KaitaiStream _io, SwitchManualIntSizeElse.Chunk _parent) {
                this(_io, _parent, null);
            }

            public ChunkDir(KaitaiStream _io, SwitchManualIntSizeElse.Chunk _parent, SwitchManualIntSizeElse _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
            }
            public void _read() {
                this.entries = new ArrayList<String>();
                {
                    int i = 0;
                    while (!this._io.isEof()) {
                        this.entries.add(new String(this._io.readBytes(4), StandardCharsets.UTF_8));
                        i++;
                    }
                }
                _dirty = false;
            }

            public void _fetchInstances() {
                for (int i = 0; i < this.entries.size(); i++) {
                }
            }

            public void _write_Seq() {
                _assertNotDirty();
                for (int i = 0; i < this.entries.size(); i++) {
                    if (this._io.isEof())
                        throw new ConsistencyError("entries", 0, this._io.size() - this._io.pos());
                    this._io.writeBytes((this.entries.get(((Number) (i)).intValue())).getBytes(Charset.forName("UTF-8")));
                }
                if (!(this._io.isEof()))
                    throw new ConsistencyError("entries", 0, this._io.size() - this._io.pos());
            }

            public void _check() {
                for (int i = 0; i < this.entries.size(); i++) {
                    if ((this.entries.get(((Number) (i)).intValue())).getBytes(Charset.forName("UTF-8")).length != 4)
                        throw new ConsistencyError("entries", 4, (this.entries.get(((Number) (i)).intValue())).getBytes(Charset.forName("UTF-8")).length);
                }
                _dirty = false;
            }
            public List<String> entries() { return entries; }
            public void setEntries(List<String> _v) { _dirty = true; entries = _v; }
            public SwitchManualIntSizeElse _root() { return _root; }
            public void set_root(SwitchManualIntSizeElse _v) { _dirty = true; _root = _v; }
            public SwitchManualIntSizeElse.Chunk _parent() { return _parent; }
            public void set_parent(SwitchManualIntSizeElse.Chunk _v) { _dirty = true; _parent = _v; }
            private List<String> entries;
            private SwitchManualIntSizeElse _root;
            private SwitchManualIntSizeElse.Chunk _parent;
        }
        public static class ChunkMeta extends KaitaiStruct.ReadWrite {
            public static ChunkMeta fromFile(String fileName) throws IOException {
                return new ChunkMeta(new ByteBufferKaitaiStream(fileName));
            }
            public ChunkMeta() {
                this(null, null, null);
            }

            public ChunkMeta(KaitaiStream _io) {
                this(_io, null, null);
            }

            public ChunkMeta(KaitaiStream _io, SwitchManualIntSizeElse.Chunk _parent) {
                this(_io, _parent, null);
            }

            public ChunkMeta(KaitaiStream _io, SwitchManualIntSizeElse.Chunk _parent, SwitchManualIntSizeElse _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
            }
            public void _read() {
                this.title = new String(this._io.readBytesTerm((byte) 0, false, true, true), StandardCharsets.UTF_8);
                this.author = new String(this._io.readBytesTerm((byte) 0, false, true, true), StandardCharsets.UTF_8);
                _dirty = false;
            }

            public void _fetchInstances() {
            }

            public void _write_Seq() {
                _assertNotDirty();
                this._io.writeBytes((this.title).getBytes(Charset.forName("UTF-8")));
                this._io.writeU1(0);
                this._io.writeBytes((this.author).getBytes(Charset.forName("UTF-8")));
                this._io.writeU1(0);
            }

            public void _check() {
                if (KaitaiStream.byteArrayIndexOf((this.title).getBytes(Charset.forName("UTF-8")), ((byte) 0)) != -1)
                    throw new ConsistencyError("title", -1, KaitaiStream.byteArrayIndexOf((this.title).getBytes(Charset.forName("UTF-8")), ((byte) 0)));
                if (KaitaiStream.byteArrayIndexOf((this.author).getBytes(Charset.forName("UTF-8")), ((byte) 0)) != -1)
                    throw new ConsistencyError("author", -1, KaitaiStream.byteArrayIndexOf((this.author).getBytes(Charset.forName("UTF-8")), ((byte) 0)));
                _dirty = false;
            }
            public String title() { return title; }
            public void setTitle(String _v) { _dirty = true; title = _v; }
            public String author() { return author; }
            public void setAuthor(String _v) { _dirty = true; author = _v; }
            public SwitchManualIntSizeElse _root() { return _root; }
            public void set_root(SwitchManualIntSizeElse _v) { _dirty = true; _root = _v; }
            public SwitchManualIntSizeElse.Chunk _parent() { return _parent; }
            public void set_parent(SwitchManualIntSizeElse.Chunk _v) { _dirty = true; _parent = _v; }
            private String title;
            private String author;
            private SwitchManualIntSizeElse _root;
            private SwitchManualIntSizeElse.Chunk _parent;
        }
        public static class Dummy extends KaitaiStruct.ReadWrite {
            public static Dummy fromFile(String fileName) throws IOException {
                return new Dummy(new ByteBufferKaitaiStream(fileName));
            }
            public Dummy() {
                this(null, null, null);
            }

            public Dummy(KaitaiStream _io) {
                this(_io, null, null);
            }

            public Dummy(KaitaiStream _io, SwitchManualIntSizeElse.Chunk _parent) {
                this(_io, _parent, null);
            }

            public Dummy(KaitaiStream _io, SwitchManualIntSizeElse.Chunk _parent, SwitchManualIntSizeElse _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
            }
            public void _read() {
                this.rest = this._io.readBytesFull();
                _dirty = false;
            }

            public void _fetchInstances() {
            }

            public void _write_Seq() {
                _assertNotDirty();
                this._io.writeBytes(this.rest);
                if (!(this._io.isEof()))
                    throw new ConsistencyError("rest", 0, this._io.size() - this._io.pos());
            }

            public void _check() {
                _dirty = false;
            }
            public byte[] rest() { return rest; }
            public void setRest(byte[] _v) { _dirty = true; rest = _v; }
            public SwitchManualIntSizeElse _root() { return _root; }
            public void set_root(SwitchManualIntSizeElse _v) { _dirty = true; _root = _v; }
            public SwitchManualIntSizeElse.Chunk _parent() { return _parent; }
            public void set_parent(SwitchManualIntSizeElse.Chunk _v) { _dirty = true; _parent = _v; }
            private byte[] rest;
            private SwitchManualIntSizeElse _root;
            private SwitchManualIntSizeElse.Chunk _parent;
        }
        public int code() { return code; }
        public void setCode(int _v) { _dirty = true; code = _v; }
        public long size() { return size; }
        public void setSize(long _v) { _dirty = true; size = _v; }
        public KaitaiStruct.ReadWrite body() { return body; }
        public void setBody(KaitaiStruct.ReadWrite _v) { _dirty = true; body = _v; }
        public SwitchManualIntSizeElse _root() { return _root; }
        public void set_root(SwitchManualIntSizeElse _v) { _dirty = true; _root = _v; }
        public SwitchManualIntSizeElse _parent() { return _parent; }
        public void set_parent(SwitchManualIntSizeElse _v) { _dirty = true; _parent = _v; }
        public byte[] _raw_body() { return _raw_body; }
        public void set_raw_Body(byte[] _v) { _dirty = true; _raw_body = _v; }
        private int code;
        private long size;
        private KaitaiStruct.ReadWrite body;
        private SwitchManualIntSizeElse _root;
        private SwitchManualIntSizeElse _parent;
        private byte[] _raw_body;
    }
    public List<Chunk> chunks() { return chunks; }
    public void setChunks(List<Chunk> _v) { _dirty = true; chunks = _v; }
    public SwitchManualIntSizeElse _root() { return _root; }
    public void set_root(SwitchManualIntSizeElse _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private List<Chunk> chunks;
    private SwitchManualIntSizeElse _root;
    private KaitaiStruct.ReadWrite _parent;
}
