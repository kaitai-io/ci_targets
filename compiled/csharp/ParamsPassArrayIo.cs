// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class ParamsPassArrayIo : KaitaiStruct
    {
        public static ParamsPassArrayIo FromFile(string fileName)
        {
            return new ParamsPassArrayIo(new KaitaiStream(fileName));
        }

        public ParamsPassArrayIo(KaitaiStream p__io, KaitaiStruct p__parent = null, ParamsPassArrayIo p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            __raw_first = m_io.ReadBytes(1);
            var io___raw_first = new KaitaiStream(__raw_first);
            _first = new Block(io___raw_first, this, m_root);
            _one = new ParamType(new List<KaitaiStream> { First.M_Io, M_Root.M_Io }, m_io, this, m_root);
        }
        public partial class Block : KaitaiStruct
        {
            public static Block FromFile(string fileName)
            {
                return new Block(new KaitaiStream(fileName));
            }

            public Block(KaitaiStream p__io, ParamsPassArrayIo p__parent = null, ParamsPassArrayIo p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _foo = m_io.ReadU1();
            }
            private byte _foo;
            private ParamsPassArrayIo m_root;
            private ParamsPassArrayIo m_parent;
            public byte Foo { get { return _foo; } }
            public ParamsPassArrayIo M_Root { get { return m_root; } }
            public ParamsPassArrayIo M_Parent { get { return m_parent; } }
        }
        public partial class ParamType : KaitaiStruct
        {
            public ParamType(List<KaitaiStream> p_argStreams, KaitaiStream p__io, ParamsPassArrayIo p__parent = null, ParamsPassArrayIo p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _argStreams = p_argStreams;
                _read();
            }
            private void _read()
            {
                _buf = m_io.ReadBytes(ArgStreams[0].Size);
            }
            private byte[] _buf;
            private List<KaitaiStream> _argStreams;
            private ParamsPassArrayIo m_root;
            private ParamsPassArrayIo m_parent;
            public byte[] Buf { get { return _buf; } }
            public List<KaitaiStream> ArgStreams { get { return _argStreams; } }
            public ParamsPassArrayIo M_Root { get { return m_root; } }
            public ParamsPassArrayIo M_Parent { get { return m_parent; } }
        }
        private Block _first;
        private ParamType _one;
        private ParamsPassArrayIo m_root;
        private KaitaiStruct m_parent;
        private byte[] __raw_first;
        public Block First { get { return _first; } }
        public ParamType One { get { return _one; } }
        public ParamsPassArrayIo M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public byte[] M_RawFirst { get { return __raw_first; } }
    }
}
