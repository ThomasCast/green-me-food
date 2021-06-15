import Sortable from 'sortablejs';

const initSortable = () => {
  const list_1 = document.querySelector('.drag-card-unassigned');
  Sortable.create(list_1, {
    group: 'list',
    animation: 150
  })
  const list_2 = document.querySelector('.drag-card-assigned-1');
  Sortable.create(list_2, {
    group: 'list',
    animation: 150
  })

};

export { initSortable };

