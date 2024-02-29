// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class SwitchManualIntSizeElse : KaitaiStruct
    {
        public static SwitchManualIntSizeElse FromFile(string fileName)
        {
            return new SwitchManualIntSizeElse(new KaitaiStream(fileName));
        }

        public SwitchManualIntSizeElse(KaitaiStream p__io, KaitaiStruct p__parent = null, SwitchManualIntSizeElse p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _chunks = new List<Chunk>();
            {
                var i = 0;
                while (!m_io.IsEof) {
                    _chunks.Add(new Chunk(m_io, this, m_root));
                    i++;
                }
            }
        }
        public partial class Chunk : KaitaiStruct
        {
            public static Chunk FromFile(string fileName)
            {
                return new Chunk(new KaitaiStream(fileName));
            }

            public Chunk(KaitaiStream p__io, SwitchManualIntSizeElse p__parent = null, SwitchManualIntSizeElse p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _code = m_io.ReadU1();
                _size = m_io.ReadU4le();
                switch (Code) {
                case 17: {
                    __raw_body = m_io.ReadBytes(Size);
                    var io___raw_body = new KaitaiStream(__raw_body);
                    _body = new ChunkMeta(io___raw_body, this, m_root);
                    break;
                }
                case 34: {
                    __raw_body = m_io.ReadBytes(Size);
                    var io___raw_body = new KaitaiStream(__raw_body);
                    _body = new ChunkDir(io___raw_body, this, m_root);
                    break;
                }
                default: {
                    __raw_body = m_io.ReadBytes(Size);
                    var io___raw_body = new KaitaiStream(__raw_body);
                    _body = new Dummy(io___raw_body, this, m_root);
                    break;
                }
                }
            }
            public partial class ChunkDir : KaitaiStruct
            {
                public static ChunkDir FromFile(string fileName)
                {
                    return new ChunkDir(new KaitaiStream(fileName));
                }

                public ChunkDir(KaitaiStream p__io, SwitchManualIntSizeElse.Chunk p__parent = null, SwitchManualIntSizeElse p__root = null) : base(p__io)
                {
                    m_parent = p__parent;
                    m_root = p__root;
                    _read();
                }
                private void _read()
                {
                    _entries = new List<string>();
                    {
                        var i = 0;
                        while (!m_io.IsEof) {
                            _entries.Add(System.Text.Encoding.GetEncoding("UTF-8").GetString(m_io.ReadBytes(4)));
                            i++;
                        }
                    }
                }
                private List<string> _entries;
                private SwitchManualIntSizeElse m_root;
                private SwitchManualIntSizeElse.Chunk m_parent;
                public List<string> Entries { get { return _entries; } }
                public SwitchManualIntSizeElse M_Root { get { return m_root; } }
                public SwitchManualIntSizeElse.Chunk M_Parent { get { return m_parent; } }
            }
            public partial class ChunkMeta : KaitaiStruct
            {
                public static ChunkMeta FromFile(string fileName)
                {
                    return new ChunkMeta(new KaitaiStream(fileName));
                }

                public ChunkMeta(KaitaiStream p__io, SwitchManualIntSizeElse.Chunk p__parent = null, SwitchManualIntSizeElse p__root = null) : base(p__io)
                {
                    m_parent = p__parent;
                    m_root = p__root;
                    _read();
                }
                private void _read()
                {
                    _title = System.Text.Encoding.GetEncoding("UTF-8").GetString(m_io.ReadBytesTerm(0, false, true, true));
                    _author = System.Text.Encoding.GetEncoding("UTF-8").GetString(m_io.ReadBytesTerm(0, false, true, true));
                }
                private string _title;
                private string _author;
                private SwitchManualIntSizeElse m_root;
                private SwitchManualIntSizeElse.Chunk m_parent;
                public string Title { get { return _title; } }
                public string Author { get { return _author; } }
                public SwitchManualIntSizeElse M_Root { get { return m_root; } }
                public SwitchManualIntSizeElse.Chunk M_Parent { get { return m_parent; } }
            }
            public partial class Dummy : KaitaiStruct
            {
                public static Dummy FromFile(string fileName)
                {
                    return new Dummy(new KaitaiStream(fileName));
                }

                public Dummy(KaitaiStream p__io, SwitchManualIntSizeElse.Chunk p__parent = null, SwitchManualIntSizeElse p__root = null) : base(p__io)
                {
                    m_parent = p__parent;
                    m_root = p__root;
                    _read();
                }
                private void _read()
                {
                    _rest = m_io.ReadBytesFull();
                }
                private byte[] _rest;
                private SwitchManualIntSizeElse m_root;
                private SwitchManualIntSizeElse.Chunk m_parent;
                public byte[] Rest { get { return _rest; } }
                public SwitchManualIntSizeElse M_Root { get { return m_root; } }
                public SwitchManualIntSizeElse.Chunk M_Parent { get { return m_parent; } }
            }
            private byte _code;
            private uint _size;
            private KaitaiStruct _body;
            private SwitchManualIntSizeElse m_root;
            private SwitchManualIntSizeElse m_parent;
            private byte[] __raw_body;
            public byte Code { get { return _code; } }
            public uint Size { get { return _size; } }
            public KaitaiStruct Body { get { return _body; } }
            public SwitchManualIntSizeElse M_Root { get { return m_root; } }
            public SwitchManualIntSizeElse M_Parent { get { return m_parent; } }
            public byte[] M_RawBody { get { return __raw_body; } }
        }
        private List<Chunk> _chunks;
        private SwitchManualIntSizeElse m_root;
        private KaitaiStruct m_parent;
        public List<Chunk> Chunks { get { return _chunks; } }
        public SwitchManualIntSizeElse M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
