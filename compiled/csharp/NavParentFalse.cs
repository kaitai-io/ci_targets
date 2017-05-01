// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System;
using System.Collections.Generic;
using System.Linq;

namespace Kaitai
{
    public partial class NavParentFalse : KaitaiStruct
    {
        public static NavParentFalse FromFile(string fileName)
        {
            return new NavParentFalse(new KaitaiStream(fileName));
        }

        public NavParentFalse(KaitaiStream io, KaitaiStruct parent = null, NavParentFalse root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _parse();
        }

        private void _parse()
        {
            _childSize = m_io.ReadU1();
            _elementA = new ParentA(m_io, this, m_root);
            _elementB = new ParentB(m_io, this, m_root);
        }
        public partial class ParentA : KaitaiStruct
        {
            public static ParentA FromFile(string fileName)
            {
                return new ParentA(new KaitaiStream(fileName));
            }

            public ParentA(KaitaiStream io, NavParentFalse parent = null, NavParentFalse root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                _parse();
            }

            private void _parse()
            {
                _foo = new Child(m_io, this, m_root);
                _bar = new ParentB(m_io, this, m_root);
            }
            private Child _foo;
            private ParentB _bar;
            private NavParentFalse m_root;
            private NavParentFalse m_parent;
            public Child Foo { get { return _foo; } }
            public ParentB Bar { get { return _bar; } }
            public NavParentFalse M_Root { get { return m_root; } }
            public NavParentFalse M_Parent { get { return m_parent; } }
        }
        public partial class ParentB : KaitaiStruct
        {
            public static ParentB FromFile(string fileName)
            {
                return new ParentB(new KaitaiStream(fileName));
            }

            public ParentB(KaitaiStream io, KaitaiStruct parent = null, NavParentFalse root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                _parse();
            }

            private void _parse()
            {
                _foo = new Child(m_io, null, m_root);
            }
            private Child _foo;
            private NavParentFalse m_root;
            private KaitaiStruct m_parent;
            public Child Foo { get { return _foo; } }
            public NavParentFalse M_Root { get { return m_root; } }
            public KaitaiStruct M_Parent { get { return m_parent; } }
        }
        public partial class Child : KaitaiStruct
        {
            public static Child FromFile(string fileName)
            {
                return new Child(new KaitaiStream(fileName));
            }

            public Child(KaitaiStream io, NavParentFalse.ParentA parent = null, NavParentFalse root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                _parse();
            }

            private void _parse()
            {
                _code = m_io.ReadU1();
                if (Code == 73) {
                    _more = m_io.ReadBytes(M_Parent.M_Parent.ChildSize);
                }
            }
            private byte _code;
            private byte[] _more;
            private NavParentFalse m_root;
            private NavParentFalse.ParentA m_parent;
            public byte Code { get { return _code; } }
            public byte[] More { get { return _more; } }
            public NavParentFalse M_Root { get { return m_root; } }
            public NavParentFalse.ParentA M_Parent { get { return m_parent; } }
        }
        private byte _childSize;
        private ParentA _elementA;
        private ParentB _elementB;
        private NavParentFalse m_root;
        private KaitaiStruct m_parent;
        public byte ChildSize { get { return _childSize; } }
        public ParentA ElementA { get { return _elementA; } }
        public ParentB ElementB { get { return _elementB; } }
        public NavParentFalse M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
