// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System;
using System.Collections.Generic;
using System.Linq;

namespace Kaitai
{
    public partial class DefaultEndianMod : KaitaiStruct
    {
        public static DefaultEndianMod FromFile(string fileName)
        {
            return new DefaultEndianMod(new KaitaiStream(fileName));
        }

        public DefaultEndianMod(KaitaiStream io, KaitaiStruct parent = null, DefaultEndianMod root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _parse();
        }

        private void _parse()
        {
            _main = new MainObj(m_io, this, m_root);
        }
        public partial class MainObj : KaitaiStruct
        {
            public static MainObj FromFile(string fileName)
            {
                return new MainObj(new KaitaiStream(fileName));
            }

            public MainObj(KaitaiStream io, DefaultEndianMod parent = null, DefaultEndianMod root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                _parse();
            }

            private void _parse()
            {
                _one = m_io.ReadS4le();
                _nest = new Subnest(m_io, this, m_root);
                _nestBe = new SubnestBe(m_io, this, m_root);
            }
            public partial class Subnest : KaitaiStruct
            {
                public static Subnest FromFile(string fileName)
                {
                    return new Subnest(new KaitaiStream(fileName));
                }

                public Subnest(KaitaiStream io, MainObj parent = null, DefaultEndianMod root = null) : base(io)
                {
                    m_parent = parent;
                    m_root = root;
                    _parse();
                }

                private void _parse()
                {
                    _two = m_io.ReadS4le();
                }
                private int _two;
                private DefaultEndianMod m_root;
                private DefaultEndianMod.MainObj m_parent;
                public int Two { get { return _two; } }
                public DefaultEndianMod M_Root { get { return m_root; } }
                public DefaultEndianMod.MainObj M_Parent { get { return m_parent; } }
            }
            public partial class SubnestBe : KaitaiStruct
            {
                public static SubnestBe FromFile(string fileName)
                {
                    return new SubnestBe(new KaitaiStream(fileName));
                }

                public SubnestBe(KaitaiStream io, MainObj parent = null, DefaultEndianMod root = null) : base(io)
                {
                    m_parent = parent;
                    m_root = root;
                    _parse();
                }

                private void _parse()
                {
                    _two = m_io.ReadS4be();
                }
                private int _two;
                private DefaultEndianMod m_root;
                private DefaultEndianMod.MainObj m_parent;
                public int Two { get { return _two; } }
                public DefaultEndianMod M_Root { get { return m_root; } }
                public DefaultEndianMod.MainObj M_Parent { get { return m_parent; } }
            }
            private int _one;
            private Subnest _nest;
            private SubnestBe _nestBe;
            private DefaultEndianMod m_root;
            private DefaultEndianMod m_parent;
            public int One { get { return _one; } }
            public Subnest Nest { get { return _nest; } }
            public SubnestBe NestBe { get { return _nestBe; } }
            public DefaultEndianMod M_Root { get { return m_root; } }
            public DefaultEndianMod M_Parent { get { return m_parent; } }
        }
        private MainObj _main;
        private DefaultEndianMod m_root;
        private KaitaiStruct m_parent;
        public MainObj Main { get { return _main; } }
        public DefaultEndianMod M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
