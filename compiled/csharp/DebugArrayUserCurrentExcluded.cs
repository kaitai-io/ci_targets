// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class DebugArrayUserCurrentExcluded : KaitaiStruct
    {
        public static DebugArrayUserCurrentExcluded FromFile(string fileName)
        {
            return new DebugArrayUserCurrentExcluded(new KaitaiStream(fileName));
        }

        public DebugArrayUserCurrentExcluded(KaitaiStream p__io, KaitaiStruct p__parent = null, DebugArrayUserCurrentExcluded p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
        }
        public void _read()
        {
            _arrayOfCats = new List<Cat>();
            for (var i = 0; i < 3; i++)
            {
                Cat _t_arrayOfCats = new Cat(m_io, this, m_root);
                try
                {
                    _t_arrayOfCats._read();
                }
                finally
                {
                    _arrayOfCats.Add(_t_arrayOfCats);
                }
            }
        }
        public partial class Cat : KaitaiStruct
        {
            public static Cat FromFile(string fileName)
            {
                return new Cat(new KaitaiStream(fileName));
            }

            public Cat(KaitaiStream p__io, DebugArrayUserCurrentExcluded p__parent = null, DebugArrayUserCurrentExcluded p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
            }
            public void _read()
            {
                _meow = m_io.ReadBytes(3 - M_Parent.ArrayOfCats.Count);
            }
            public byte[] Meow { get { return _meow; } }
            public DebugArrayUserCurrentExcluded M_Root { get { return m_root; } }
            public DebugArrayUserCurrentExcluded M_Parent { get { return m_parent; } }
            private byte[] _meow;
            private DebugArrayUserCurrentExcluded m_root;
            private DebugArrayUserCurrentExcluded m_parent;
        }
        public List<Cat> ArrayOfCats { get { return _arrayOfCats; } }
        public DebugArrayUserCurrentExcluded M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private List<Cat> _arrayOfCats;
        private DebugArrayUserCurrentExcluded m_root;
        private KaitaiStruct m_parent;
    }
}
