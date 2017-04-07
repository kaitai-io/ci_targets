// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System;
using System.Collections.Generic;
using System.Linq;

namespace Kaitai
{
    public partial class HelloWorld : KaitaiStruct
    {
        public static HelloWorld FromFile(string fileName)
        {
            return new HelloWorld(new KaitaiStream(fileName));
        }

        public HelloWorld(KaitaiStream io, KaitaiStruct parent = null, HelloWorld root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _parse();
        }

        private void _parse()
        {
            _one = m_io.ReadU1();
        }
        private byte _one;
        private HelloWorld m_root;
        private KaitaiStruct m_parent;
        public byte One { get { return _one; } }
        public HelloWorld M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
