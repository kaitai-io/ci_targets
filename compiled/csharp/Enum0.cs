// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System;
using System.Collections.Generic;
using System.Linq;

namespace Kaitai
{
    public partial class Enum0 : KaitaiStruct
    {
        public static Enum0 FromFile(string fileName)
        {
            return new Enum0(new KaitaiStream(fileName));
        }

        public enum Animal
        {
            Dog = 4,
            Cat = 7,
            Chicken = 12,
        }

        public Enum0(KaitaiStream io, KaitaiStruct parent = null, Enum0 root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _parse();
        }

        private void _parse()
        {
            _pet1 = ((Animal) m_io.ReadU4le());
            _pet2 = ((Animal) m_io.ReadU4le());
        }
        private Animal _pet1;
        private Animal _pet2;
        private Enum0 m_root;
        private KaitaiStruct m_parent;
        public Animal Pet1 { get { return _pet1; } }
        public Animal Pet2 { get { return _pet2; } }
        public Enum0 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
