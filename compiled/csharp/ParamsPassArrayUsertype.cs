// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class ParamsPassArrayUsertype : KaitaiStruct
    {
        public static ParamsPassArrayUsertype FromFile(string fileName)
        {
            return new ParamsPassArrayUsertype(new KaitaiStream(fileName));
        }

        public ParamsPassArrayUsertype(KaitaiStream p__io, KaitaiStruct p__parent = null, ParamsPassArrayUsertype p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _blocks = new List<Block>();
            for (var i = 0; i < 2; i++)
            {
                _blocks.Add(new Block(m_io, this, m_root));
            }
            _passBlocks = new ParamType(Blocks, m_io, this, m_root);
        }
        public partial class Block : KaitaiStruct
        {
            public static Block FromFile(string fileName)
            {
                return new Block(new KaitaiStream(fileName));
            }

            public Block(KaitaiStream p__io, ParamsPassArrayUsertype p__parent = null, ParamsPassArrayUsertype p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _foo = m_io.ReadU1();
            }
            public byte Foo { get { return _foo; } }
            public ParamsPassArrayUsertype M_Root { get { return m_root; } }
            public ParamsPassArrayUsertype M_Parent { get { return m_parent; } }
            private byte _foo;
            private ParamsPassArrayUsertype m_root;
            private ParamsPassArrayUsertype m_parent;
        }
        public partial class ParamType : KaitaiStruct
        {
            public ParamType(List<Block> p_bar, KaitaiStream p__io, ParamsPassArrayUsertype p__parent = null, ParamsPassArrayUsertype p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _bar = p_bar;
                _read();
            }
            private void _read()
            {
                _one = m_io.ReadBytes(Bar[0].Foo);
                _two = m_io.ReadBytes(Bar[1].Foo);
            }
            public byte[] One { get { return _one; } }
            public byte[] Two { get { return _two; } }
            public List<Block> Bar { get { return _bar; } }
            public ParamsPassArrayUsertype M_Root { get { return m_root; } }
            public ParamsPassArrayUsertype M_Parent { get { return m_parent; } }
            private byte[] _one;
            private byte[] _two;
            private List<Block> _bar;
            private ParamsPassArrayUsertype m_root;
            private ParamsPassArrayUsertype m_parent;
        }
        public List<Block> Blocks { get { return _blocks; } }
        public ParamType PassBlocks { get { return _passBlocks; } }
        public ParamsPassArrayUsertype M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private List<Block> _blocks;
        private ParamType _passBlocks;
        private ParamsPassArrayUsertype m_root;
        private KaitaiStruct m_parent;
    }
}
